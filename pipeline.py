"""
Pipeline for Making Maps out of Chandra Data (eventually also XMM)
@author: jpbreuer
"""

#from __future__ import division
import re
import sys
import os
import subprocess

import numpy as np
import pandas as pd

import matplotlib
matplotlib.use('agg')
import matplotlib.pyplot as plt
from matplotlib import rc
rc('text', usetex=True)
matplotlib.rcParams['mathtext.fontset'] = 'cm'
matplotlib.rcParams['font.family'] = 'STIXGeneral'
from astropy.visualization import astropy_mpl_style
plt.style.use(astropy_mpl_style)
from astropy.io import fits
from astropy import wcs

#from scipy import ndimage
#from scipy.stats import multivariate_normal

###--- Required ---> Make these directories if they do not exist 
cluster = '"a2256"'     ##'"07 17 31.20" "+37 45 35.4"'#
parentdir = '/home/jpbreuer/Chandra_data/a2256'# + cluster + '/'
specfile_outputdir = parentdir + '/specfile_output'
XSPEC = True #keep one True and one False, not both True, else issues parsing + making maps
SPEX = False

#%%
###--- PreProcessing Flags ---> # Output from these flags results in a different code inside the prelim_products.sh 
download_reprocess_data = True
flare_filter = True # True to check for flaring in individual observations and to automate partial removal of pointsources
merge_data = True
#!! After merge_data, pointsources must be excised and confirmed manually. See broad_thresh_sps.fits with regionfile pointsources_combo.fits
no_emission = parentdir + '/regionfiles/src_0.5-7-nps-noem.reg'
no_pointsources = parentdir + '/regionfiles/broad_src_0.5-7-pointsources.reg'
fov_name = parentdir + '/regionfiles/square.reg' # or False

###--- Image Analysis Algorithm Flags --->
simple_hardnessmap = True
# From this point it's assumed that merged observation has been reduced with square_fov
#!! Check that broad_thresh_square_sps.fits exists in merged observation directory 
adaptivebin = True
contourbin = True; sn_per_region = 70; reg_smoothness = 100
minx = 3069; miny = 3175
#!! Need to manually find dimensions (minx and miny) of broad_thresh_square_sps.fits for producing the regions
# sn approx sqrt number of counts: 40k = 200, 20k = 141.42, 10k = 100, 5k = 70.71
# keep reg_smoothness at 100 or high

circle_mincounts = True; mincount = 5000
unsharp_mask = True
ggm = True
directional_ggm = 'Sobel' #'Laplace', 'Sobel', 'Roberts', 'Prewitt', 'Robinson', 'Kirsch'
skeleton = False

#%%
###--- Some New Variables---> should not need to touch
contbindir = parentdir +'/merged/contbin_sn' + str(sn_per_region) + '_smooth' + str(reg_smoothness) + ''
regdir = contbindir + '/outreg'
regnum = int(os.popen('ls -1 ' + regdir + '| grep -v / | wc -l').read())# this gets the number of non directory files in the regdir folder
sexdir = regdir + '/sex'
sexnum = int(os.popen('ls -1 ' + sexdir + '| grep -v / | wc -l').read())
binmap = contbindir + '/contbin_binmap.fits'
resultsdir = specfile_outputdir + '/results_sn' + str(sn_per_region) + '_smooth' + str(reg_smoothness)
compresseddir = specfile_outputdir + '/compressed_sn' + str(sn_per_region) + '_smooth' + str(reg_smoothness)
mapsdir = resultsdir + '/maps'


#%%
###--- PIPELINE STARTS HERE! --->
# could not deflare 965
# 1386 missing background for ccd8 - removed

def main():
    #input no emission region, pointsources region, desired fov subset region 
#    PreProcessing(no_emission,no_pointsources,fov_name)
    #run ./preprocessing.sh

#    Preliminary_Products()
    #run ./preliminary_products.sh
#    _RegCoordChange(regdir)
    #run ./regcoordchange.sh
    
#    Processing(sexdir)
    #run ./pre-fitting.sh
    #run ./spexfitting.sh
    #run ./xspecfitting.sh
    
    ParseOutput(resultsdir)
#    MakeMaps('./regions-info-spex.data',binmap)
    MakeMaps('./regions-info-xspec.data',binmap)
    CleanUp(mapsdir)





#%%
###--- This is where the magic happens --->

def PreProcessing(no_emission_reg,pointsources_reg,fov):#region file with no pointsources or cluster emission
    
    
#    file = open('preprocessing.sh', 'w')
#    if download_reprocess_data:
#        file.write("echo 'Download and Reprocess Data'\n")
#        file.write('cd ' + parentdir + '\n')
#        dldata = 'download_chandra_obsid ' + obsids_fullstr
#        reprodata = 'chandra_repro ' + obsids_fullstr + ' outdir= verbose=1'
#        file.write(dldata + '\n')
#        file.write(reprodata + '\n')
#        file.write("echo 'Download and Reprocess Data... Done!'\n\n")
    file = open('preprocessing.sh', 'w')
    if download_reprocess_data:
        file.write("echo 'Download and Reprocess Data'\n")
        file.write('cd ' + parentdir + '\n')
        dldata = 'download_chandra_obsid ' + obsids_fullstr
        file.write(dldata + '\n')
        mode_obsid = []
        for ii in list(range(len(obsids))):
            file.write('rm -rf ' + obsids[ii] + '/repro\n')
            mode_obsid.append(os.popen('dmkeypar ' + parentdir + '/' + obsids[ii] + '/primary/*evt2.fits.gz DATAMODE echo+').read().split()[0])
            #file.write('dmkeypar ' + obsids[ii] + '/primary/*evt2.fits.gz DATAMODE echo+')
            #mode_obsid = mode_obsid.split()
            #file.write(str(mode_obsid))
            if mode_obsid[ii] == 'VFAINT':
                reprodata = 'chandra_repro ' + obsids[ii] + ' outdir= check_vf_pha=yes verbose=1 clobber=yes'
            else:
                reprodata = 'chandra_repro ' + obsids[ii] + ' outdir= verbose=1 clobber=yes'
            file.write('punlearn ardlib\n')
            file.write(reprodata + '\n')
        file.write("echo 'Download and Reprocess Data... Done!'\n\n")
    
    if flare_filter:
        file.write("echo 'Extract Light Curves for Deflaring'\n")
        file.write('cd ' + parentdir + '\n')
        for ii in list(range(len(obsids))):
            file.write('cd '+ parentdir + '/' + obsids[ii] + '\n')
            bpix = os.popen('ls ' + parentdir + '/' + obsids[ii] + '/repro/*repro_bpix1*').read()
            file.write('punlearn ardlib\nacis_set_ardlib ' + bpix + '\n')
            file.write('punlearn fluximage\nfluximage repro/ repro/' + obsids[ii] + ' binsize=1 bands=0.5:7:2.3 clobber=yes\n')
            file.write('cd repro\n')
            file.write('punlearn mkpsfmap\nmkpsfmap ' + obsids[ii] + '_0.5-7_thresh.img outfile=' + obsids[ii] + '_0.5-7.psf energy=2.3 ecf=0.9 clobber=yes\n')
            file.write('punlearn wavdetect\nwavdetect infile=' + obsids[ii] + '_0.5-7_thresh.img psffile=' + obsids[ii] + '_0.5-7.psf expfile=' + obsids[ii] + '_0.5-7_thresh.expmap outfile=src_0.5-7.fits scellfile=scell_0.5-7.fits imagefile=imgfile_0.5-7.fits defnbkgfile=nbkg_0.5-7.fits regfile=' + obsids[ii] + '_src_0.5-7.reg scales="1 2 4 8 16 32" maxiter=3 sigthresh=5e-6 ellsigma=5.0 clobber=yes\n\n')
            file.write("echo 'Made regions... Done!'\n")
            file.write("echo 'CHECK REGLIST AND REMOVE ALL POINT SOURCES AS WELL AS CLUSTER EMISSION'\n\n")
            
            file.write("echo 'Make GTI for deflaring observations'\n\n")
#            file.write('punlearn dmcopy\ndmcopy "acisf' + obsids_padded[ii] + '_repro_evt2.fits[exclude sky=region(' + no_emission_reg + ')]" ' + obsids[ii] + '_nosources.evt option=all clobber=yes\n')
            file.write('punlearn dmcopy\ndmcopy "acisf' + obsids_padded[ii] + '_repro_evt2.fits[exclude sky=region(' + obsids[ii] + '_src_0.5-7-noem.reg)]" ' + obsids[ii] + '_nosources.evt option=all clobber=yes\n')
            file.write('punlearn dmcopy\ndmcopy "' + obsids[ii] + '_nosources.evt[energy=500:7000]" ' + obsids[ii] + '_0.5-7_nosources.evt option=all clobber=yes\n')
            file.write('punlearn dmextract\ndmextract "' + obsids[ii] + '_0.5-7_nosources.evt[bin time=::259.28]" ' + obsids[ii] + '_0.5-7.lc opt=ltc1 clobber=yes\n')
            file.write('punlearn deflare\ndeflare ' + obsids[ii] + '_0.5-7.lc ' + obsids[ii] + '_0.5-7.gti method=clean\n')
            file.write('punlearn dmcopy\ndmcopy "acisf' + obsids_padded[ii] + '_repro_evt2.fits[@' + obsids[ii] + '_0.5-7.gti]" acisf' + obsids_padded[ii] + '_clean_evt.fits opt=all clobber=yes\n\n')
            file.write("echo 'Make background with GTI'\n\n")
            mode_obsid.append(os.popen('dmkeypar ' + parentdir + '/' + obsids[ii] + '/primary/*evt2.fits.gz DATAMODE echo+').read().split())
            if mode_obsid[ii] == 'VFAINT':
                file.write('punlearn blanksky\nblanksky evtfile="acisf' + obsids_padded[ii] + '_repro_evt2.fits[@' + obsids[ii] + '_0.5-7.gti]" outfile=' + obsids[ii] + '_vfbackground_clean.evt tmpdir=./ clobber=yes\n')
                file.write('punlearn dmcopy\ndmcopy "' + obsids[ii] + '_vfbackground_clean.evt[status=0]" ' + obsids[ii] + '_background_clean.evt clobber=yes\n\n')
            else:
                file.write('punlearn blanksky\nblanksky evtfile="acisf' + obsids_padded[ii] + '_repro_evt2.fits[@' + obsids[ii] + '_0.5-7.gti]" outfile=' + obsids[ii] + '_background_clean.evt tmpdir=./ clobber=yes\n')
    #                os.popen('dmkeypar(infile="acisf' + obsids_padded[ii] + '_repro_evt2.fits" key="OBS_ID" echo=yes)').read()
            file.write('dmhedit infile="' + obsids[ii] + '_background_clean.evt" filelist=none key="OBS_ID" value="' + obsids[ii] + '" operation="add"\n')
            file.write('blanksky_image bkgfile=' + obsids[ii] + '_background_clean.evt outroot=' + obsids[ii] + '_blank imgfile=' + obsids[ii] + '_0.5-7_thresh.img tmpdir=./ clobber=yes\n\n')
    
    if merge_data:
        file.write("echo 'Merge all Observations'\n")
        file.write('cd ' + parentdir + '\n')
        file.write('find "$(pwd)" -name "acisf*clean*" > cleanevt2.list\n')
        file.write('punlearn merge_obs\nmerge_obs @cleanevt2.list ' + parentdir + '/merged/ bin=1 bands=broad,csc clobber=yes\n')
        file.write("echo 'Merge all Observations... Done!'\n\n")
        #file.write("echo 'Combining all observation pointsource region files'\n")
        #file.write('ds9 ' + parentdir +'/merged/broad_thresh.img &\nsleep 10\nxpaset -p ds9 lower\n')
        #for ii in list(range(len(obsids))): 
        #    file.write('xpaset -p ds9 regions load ' + parentdir + '/' + obsids[ii] + '/repro/pointsources.fits\n')
        #file.write('xpaset -p ds9 regions format ciao\nxpaset -p ds9 regions system wcs\nxpaset -p ds9 regions skyformat sexagesimal\nxpaset -p ds9 regions save ' + parentdir + '/merged/pointsources_combo.fits\nxpaset -p ds9 exit\n')
        #file.write("echo 'Combining all observation pointsource regionfiles... Done!'\n\n")
        
        def _mkmap(input,output,head):
            #hdu = fits.PrimaryHDU(input)
            fits.writeto(output,input,head,overwrite=True)
        
        fluxim = fits.open(parentdir + '/merged/broad_flux.img')
        fluxhdr = fluxim[0].header
        fluximdata = fluxim[0].data
        threshim = fits.open(parentdir + '/merged/broad_thresh.img')
        #        threshhdr = threshim[0].header
        threshimdata = threshim[0].data
        expoim = fits.open(parentdir + '/merged/broad_thresh.expmap')
        expohd = expoim[0].header
        expoimdata = expoim[0].data
        
        threshsum = np.sum(threshimdata)
        fluxsum = np.sum(fluximdata)
        threshav = threshsum/len(threshimdata)
        fluxav = fluxsum/len(fluximdata)
        scaledflux = (fluximdata*(threshav/fluxav))#(threshav/fluxav)
        _mkmap(scaledflux*28*(np.amax(threshimdata)/np.amax(scaledflux)),parentdir + '/merged/scaled_broad_flux.fits',fluxhdr)
        
        file.write("echo 'CHECK SCALING OF SCALED FLUX IMG WITH THRESHOLD'\n")
        file.write("echo 'Removing Point Sources'\n")
        file.write('cd ' + parentdir +'/merged\n')
        file.write('wavdetect infile=broad_thresh.img psffile=none expfile=broad_thresh.expmap outfile=src_0.5-7.fits scellfile=scell_0.5-7.fits imagefile=imgfile_0.5-7.fits defnbkgfile=nbkg_0.5-7.fits regfile=broad_src_0.5-7.reg scales="1 2 4 8 16 32" maxiter=3 sigthresh=5e-6 ellsigma=5.0 clobber=yes\n\n')
        file.write("echo 'CHECK AND CORRECT THE POINT SOURCE REGIONS'\n\n")
#        file.write('dmcopy "broad_thresh.img[exclude sky=region(' + pointsources_reg + ')]" broad_thresh_sps.fits clobber=yes\n')
        file.write('dmcopy "scaled_broad_flux.fits[exclude sky=region(' + pointsources_reg + ')]" scaled_broad_flux_sps.fits clobber=yes\n')
        file.write("echo 'Removing Point Sources... Done!'\n\n")
    
        if fov:
            file.write("echo 'Reducing FOV to specific region'\n")
#            file.write('dmcopy "broad_thresh_sps.fits[sky=region(' + fov + ')]" broad_thresh_square_sps.fits clobber=yes\n')
            file.write('dmcopy "scaled_broad_flux_sps.fits[sky=region(' + fov + ')]" scaled_broad_flux_fov_sps.fits clobber=yes\n')
            file.write("echo 'Reducing FOV to specific region... Done!'\n\n")
        else:
            file.write("echo 'Renaming broad_thresh'\n")
            file.write('mv broad_thresh_sps.fits broad_thresh_square_sps.fits\n')
            file.write("echo 'broad_thresh_sps now broad_thresh_square_sps'\n")  
        
#    if fill_holes:
#        fluxhole = fits.open(parentdir + '/merged/scaled_broad_flux_fov_sps.fits')
#        fluxheadr = fluxhole[0].header
#        fluxholeimdata = fluxhole[0].data
#        mask = fluxholeimdata.astype(int).astype(bool).astype(int)
#
#        inputArray = fluxholeimdata
#        d = inpaint_array(inputArray, mask)
#        _mkmap(d,parentdir + '/merged/inpainted_scaled_fov.fits',fluxheadr)
    file.close()


#%%
def FindData(input):
    obsids_search = os.popen('find_chandra_obsid ' + input).read().split('\n')
    obsids = []; obsids_padded = [];
    for ii in list(range(len(obsids_search)-2)):
        obsids.append(obsids_search[ii+1].split()[0])
        obsids_padded.append(format(int(obsids_search[ii+1].split()[0]), '05d'))
    obsids_fullstr = ','.join(map(str, obsids)) 
    return obsids, obsids_padded, obsids_fullstr

obsids, obsids_padded, obsids_fullstr = FindData(cluster)

#######################
obsids = obsids[1:]
obsids_padded = obsids_padded[1:]
#######################

#%%
def Preliminary_Products():
    file = open('preliminary_products.sh', 'w')
    file.write('cd ' + parentdir +'/merged\n')
    if simple_hardnessmap:
        file.write("echo 'Hardness Ratio Maps'\n")
        hardness = 'dmnautilus "broad_thresh.img" broad_thresh_a.fits snr=20 outmask=broad_thresh.map clob+\ndmmaskbin "soft_thresh.img" broad_thresh.map ratiosoft.img clob+\ndmmaskbin "hard_thresh.img" broad_thresh.map ratiohard.img clob+\ndmimgcalc ratiosoft.img,ratiohard.img none hardness.fits op="imgout=((img2-img1)/(img2+img1))" clob+\nmkdir simple_hardness\nmv broad_thresh_a.fits broad_thresh.map ratiosoft.img ratiohard.img hardness.fits simple_hardness'
        file.write(hardness + '\n')
        file.write("echo 'Hardness Ratio Maps... Done!'\n\n")

    if adaptivebin:
        file.write("echo 'Adaptive Binning'\n")
        adaptbinsq = 'dmnautilus scaled_broad_flux_fov_sps.fits broad_thresh_sqsps_abin.fits snr=20 outmask=broad_thresh_sqsps_abin_mask.fits clob+\nmkdir adaptbin\nmv broad_thresh_sqsps_abin.fits broad_thresh_sqsps_abin_mask.fits adaptbin'
        file.write(adaptbinsq + '\n')
        file.write("echo 'Adaptive Binning... Done!'\n\n")
# from hdr file           a       b       l       w
                #Box(3957.7,3967.09,1775.34,1582.51)
#                x = 3957.7-(1775.34/2) y = 3967.09-(1582.51/2)
    
    if contourbin:
        file.write("echo 'Contour Binning'\n")
        contbin = 'contbin --sn=' + str(sn_per_region) + ' --smoothsn=' + str(reg_smoothness) + ' --constrainfill --constrainval=2. scaled_broad_flux_fov_sps.fits\nmkdir contbin_sn' + str(sn_per_region) + '_smooth' + str(reg_smoothness) + '\nmkdir contbin_sn' + str(sn_per_region) + '_smooth' + str(reg_smoothness) + '/outreg\nmv bin_signal_stats.qdp bin_sn_stats.qdp contbin_binmap.fits contbin_mask.fits contbin_out.fits contbin_sn.fits contbin_sn' + str(sn_per_region) + '_smooth' + str(reg_smoothness) + '\ncd contbin_sn' + str(sn_per_region) + '_smooth' + str(reg_smoothness) + '\n'
        mkregions = 'make_region_files --minx=' + str(minx) + ' --miny=' + str(miny) + ' --bin=1 --outdir=outreg contbin_binmap.fits\n'
        file.write(contbin)
        file.write(mkregions)
        _RegCoordChange(parentdir + '/merged/contbin_sn' + str(sn_per_region) + '_smooth' + str(reg_smoothness) + '/outreg')
        file.write('cd ' + parentdir +'/merged/\n')
        file.write("echo 'Contour Binning... Done! Remember to run ./regcoordchange.sh'\n\n")
        
    if circle_mincounts:
        file.write("echo 'Circle with Min Counts'\n")
        min_cnts = 'punlearn dmimgadapt\ndmimgadapt infile="scaled_broad_flux_fov_sps.fits" outfile=smoothed_image.fits function=tophat counts=' + str(mincount) + ' minrad=1 maxrad=150 numrad=199 radscale=linear radfile=radii_min_counts.map mode=h clobber=yes verbose=3\nmkdir circle_mincounts\nmv smoothed_image* radii_min_counts* circle_mincounts'
        file.write(min_cnts + '\n')
        file.write("echo 'Circle with Min Counts... Done!'\n\n")
    
    if unsharp_mask:
        file.write("echo 'Unsharp Masking'\n")
        usharp = 'aconvolve scaled_broad_flux_fov_sps.fits broad_thresh_square_sps_g3.fits "lib:gaus(2,5,5,3,3)" meth=fft mode=h clob+\naconvolve scaled_broad_flux_fov_sps.fits broad_thresh_square_sps_g30.fits "lib:gaus(2,5,5,30,30)" meth=fft mode=h clob+\ndmimgcalc broad_thresh_square_sps_g3.fits broad_thresh_square_sps_g30.fits broad_thresh_square_sps_unsharpmask.fits sub clob+\nmkdir unsharp_mask\nmv broad_thresh_square_sps_g3.fits broad_thresh_square_sps_g30.fits broad_thresh_square_sps_unsharpmask.fits unsharp_mask'
        file.write(usharp + '\n')
        file.write("echo 'Unsharp Masking... Done!'\n\n")
    
    if ggm:
        file.write("echo 'Gaussian Gradient Magnitude'\n")
        gggm = 'aconvolve scaled_broad_flux_fov_sps.fits gaus10.img "lib:gaus(2,5,5,10,10)" meth=fft clob+\naconvolve gaus10.img grad.img "txt:((0,1,0),(1,-4,1),(0,1,0))" meth=fft clob+ norm=none\ndmimgcalc grad.img none ggm.img op="imgout=(abs(img1)*sqrt(2.0))" clob+'
        ggmv = 'mkdir ggm\nmv ggm.img grad.img gaus10.img ggm'
        file.write(gggm + '\n')
        file.write(ggmv + '\n')
        file.write("echo 'Gaussian Gradient Magnitude... Done!'\n\n")
    
    if directional_ggm:
        file.write("echo 'Directional Gradient Estimators'\n")
        file.write(gggm + '\n')
        if directional_ggm == 'Laplace':
            #Laplace	((0,1,0),(1,-4,1),(0,1,0))	    ((0,1,0),(1,-4,1),(0,1,0))
            file.write("echo 'Computing Laplace Kernel: ((0,1,0),(1,-4,1),(0,1,0))	    ((0,1,0),(1,-4,1),(0,1,0))'\n")
            lap = 'aconvolve gaus10.img dx.img "txt:((0,1,0),(1,-4,1),(0,1,0))" meth=fft clob+ norm=none\naconvolve gaus10.img dy.img "txt:((0,1,0),(1,-4,1),(0,1,0))" meth=fft clob+ norm=none\ndmimgcalc dx.img,dy.img none laplace.mag op="imgout=sqrt((img1*img1)+(img2*img2))" mode=h clob+\ndmimgcalc dx.img,dy.img none laplace.ang op="imgout=atan(img2/img1)" mode=h clob+'
            file.write(lap + '\n')
        if directional_ggm == 'Sobel':
            #Sobel	    ((1,2,1),(0,0,0),(-1,-2,-1))	((-1,0,1),(-2,0,2),(-1,0,1))
            file.write("echo 'Computing Sobel Kernel: ((1,2,1),(0,0,0),(-1,-2,-1))	((-1,0,1),(-2,0,2),(-1,0,1))'\n")
            sob = 'aconvolve gaus10.img dx.img "txt:((1,2,1),(0,0,0),(-1,-2,-1))" meth=fft clob+ norm=none\naconvolve gaus10.img dy.img "txt:((-1,0,1),(-2,0,2),(-1,0,1))" meth=fft clob+ norm=none\ndmimgcalc dx.img,dy.img none sobel.mag op="imgout=sqrt((img1*img1)+(img2*img2))" mode=h clob+\ndmimgcalc dx.img,dy.img none sobel.ang op="imgout=atan(img2/img1)" mode=h clob+'
            file.write(sob + '\n')
        if directional_ggm == 'Roberts':
            #Roberts	((1,0),(0,-1))              	((0,1),(-1,0))
            file.write("echo 'Computting Roberts Kernel: ((1,0),(0,-1))              	((0,1),(-1,0))'\n")
            robs = 'aconvolve gaus10.img dx.img "txt:((1,0),(0,-1))" meth=fft clob+ norm=none\naconvolve gaus10.img dy.img "txt:((0,1),(-1,0))" meth=fft clob+ norm=none\ndmimgcalc dx.img,dy.img none roberts.mag op="imgout=sqrt((img1*img1)+(img2*img2))" mode=h clob+\ndmimgcalc dx.img,dy.img none roberts.ang op="imgout=atan(img2/img1)" mode=h clob+'
            file.write(robs + '\n')
        if directional_ggm == 'Prewitt':
            #Prewitt	((1,1,1),(0,0,0),(-1,-1,-1))	((-1,-1,-1),(0,0,0),(1,1,1))
            file.write("echo 'Computing Prewitt Kernel: ((1,1,1),(0,0,0),(-1,-1,-1))	((-1,-1,-1),(0,0,0),(1,1,1))'\n")
            prew = 'aconvolve gaus10.img dx.img "txt:((1,1,1),(0,0,0),(-1,-1,-1))" meth=fft clob+ norm=none\naconvolve gaus10.img dy.img "txt:((-1,-1,-1),(0,0,0),(1,1,1))" meth=fft clob+ norm=none\ndmimgcalc dx.img,dy.img none prewitt.mag op="imgout=sqrt((img1*img1)+(img2*img2))" mode=h clob+\ndmimgcalc dx.img,dy.img none prewitt.ang op="imgout=atan(img2/img1)" mode=h clob+'
            file.write(prew + '\n')
        if directional_ggm == 'Robinson':
            #Robinson	((1,1,1),(1,-2,1),(-1,-1,-1))	((-1,1,1),(-1,-2,1),(-1,1,1))
            file.write("echo 'Computing Robinson Kernel: ((1,1,1),(1,-2,1),(-1,-1,-1))	((-1,1,1),(-1,-2,1),(-1,1,1))'\n")
            robi = 'aconvolve gaus10.img dx.img "txt:((1,1,1),(1,-2,1),(-1,-1,-1))" meth=fft clob+ norm=none\naconvolve gaus10.img dy.img "txt:((-1,1,1),(-1,-2,1),(-1,1,1))" meth=fft clob+ norm=none\ndmimgcalc dx.img,dy.img none robinson.mag op="imgout=sqrt((img1*img1)+(img2*img2))" mode=h clob+\ndmimgcalc dx.img,dy.img none robinson.ang op="imgout=atan(img2/img1)" mode=h clob+'
            file.write(robi + '\n') 
        if directional_ggm == 'Kirsch':
            #Kirsch     ((3,3,3),(3,0,3),(-5,-5,-5))	((-5,3,3),(-5,0,3),(-5,3,3))
            file.write("echo 'Computing Kirsch Kernel: ((3,3,3),(3,0,3),(-5,-5,-5))	((-5,3,3),(-5,0,3),(-5,3,3))'\n")
            kir = 'aconvolve gaus10.img dx.img "txt:((3,3,3),(3,0,3),(-5,-5,-5))" meth=fft clob+ norm=none\naconvolve gaus10.img dy.img "txt:((-5,3,3),(-5,0,3),(-5,3,3))" meth=fft clob+ norm=none\ndmimgcalc dx.img,dy.img none kirsch.mag op="imgout=sqrt((img1*img1)+(img2*img2))" mode=h clob+\ndmimgcalc dx.img,dy.img none kirsch.ang op="imgout=atan(img2/img1)" mode=h clob+\n\nmkdir directional_gradient\nmv laplace.mag laplace.ang sobel.mag sobel.ang roberts.mag roberts.ang prewitt.mag prewitt.ang robinson.mag robinson.ang kirsch.mag kirsch.ang directional_gradient'
            file.write(kir + '\n')
        file.write('mv *.mag *.ang ggm\n')
        file.write("echo 'Directional Gradient Estimators... Done!'\n\n")
    
    if skeleton:
        file.write("echo 'Skeleton'\n")
        file.write(gggm + '\n')
        skel = 'dmimgfilt ggm.img ggm_h.img function=peak mask="box(0,0,1,3)" clob+\ndmimgfilt ggm.img ggm_v.img function=peak mask="box(0,0,3,1)" clob+\ndmimgfilt ggm_h.img,ggm_v.img ggm_skel.img function=max mask="box(0,0,3,3)" clob+\ndmimgthresh ggm_skel.img - cut=INDEF value=0 | dmimgthresh - ggm_skel_thresh.img cut=0.002 value=0 clob+\n\nmkdir skeleton\nmv ggm_skel.img ggm_skel_thresh.img ggm_h.img ggm_v.img skeleton'
        file.write(skel + '\n')
        file.write("echo 'Skeleton... Done!'\n\n")
    file.close()

#%%
def _RegCoordChange(inputdir):
    file2 = open('regcoordchange.sh', 'w')
    file2.write("echo 'Converting region file coordinate system syntax'\n")
    file2.write('mkdir ' + parentdir + '/merged/contbin_sn' + str(sn_per_region) + '_smooth' + str(reg_smoothness) + '/outreg/sex/\n')
    file2.write('ds9 ' + parentdir +'/merged/scaled_broad_flux_fov_sps.fits &\nsleep 10\nxpaset -p ds9 lower\n')
    for ii in list(range(regnum)): 
        file2.write('xpaset -p ds9 regions load ' + inputdir + '/xaf_' + str(ii) + '.reg\nxpaset -p ds9 regions format ciao\nxpaset -p ds9 regions system wcs\nxpaset -p ds9 regions skyformat sexagesimal\nxpaset -p ds9 regions save ' + inputdir + '/sex/xaf_' + str(ii) + '_sex.reg\nxpaset -p ds9 regions delete all\n')
    file2.write('xpaset -p ds9 exit\n\n')
    file2.write("echo 'Converting region file coordinate system syntax... Done!'\n\n")
    file2.close()

#%%
def Processing(inputdir):
#    obsids, obsids_padded, obsids_fullstr = _FindData(cluster)
    file = open('pre-fitting.sh', 'w')
    file.write('mkdir ' + compresseddir + '\nmkdir ' + resultsdir + '\n')
    file.write('rm ' + specfile_outputdir + '/*.res ' + specfile_outputdir + '/*.spo\n')
    file.write('rm *.arf *.rmf *.pi *.grp\n\n')

    x = 0
    # Loops for taking the relevant Chandra files for grouping and eventually making spectral fits out of them
    for ii in list(range(sexnum)): #len(obsids)
        for jj in list(range(len(obsids))): #regnum
            file.write("echo 'Observation " + obsids[jj] + " (" + str(jj+1) + "/" + str(len(obsids)) + ") Region " + str(ii) + " (" + str(ii+1) + "/" + str(sexnum) + ")'\n")
            file.write("echo 'Extract region of interest, spectra, rmf, arf, background spectra'\n")

            file.write('cd ' + specfile_outputdir + '\n\n')
            file.write('punlearn specextract\n')
            infile = 'infile="' + parentdir + '/' + obsids[jj] + '/repro/acisf' + obsids_padded[jj] + '_clean_evt.fits[sky=region(' + inputdir +'/xaf_' + str(ii) + '_sex.reg)]" '
            bkgfile = 'bkgfile="' + parentdir + '/' + obsids[jj] + '/repro/' + obsids[jj] + '_background_clean.evt[sky=region(' + inputdir +'/xaf_' + str(ii) + '_sex.reg)]" '
            outroot = 'outroot=' + specfile_outputdir + '/xaf_' + obsids[jj] + '_' + str(ii) + ' '
            bkgresp = 'bkgresp=no ' #no = subtract background; yes = model background using arf and rmf
            weight_rmf = 'weight_rmf=yes '
            binspec = 'binspec=1 '
            
            file.write('specextract ' + infile + outroot + bkgfile + bkgresp + weight_rmf + binspec + 'verbose=1 clobber=yes\n\n')

            file.write('grppha xaf_' + obsids[jj] + '_' + str(ii) + '.pi xaf_' + obsids[jj] + '_' + str(ii) + '.grp "chkey RESPFILE xaf_' + obsids[jj] + '_' + str(ii) + '.rmf & chkey ANCRFILE xaf_' + obsids[jj] + '_' + str(ii) + '.arf & chkey BACKFILE xaf_' + obsids[jj] + '_' + str(ii) + '_bkg.pi & group min 1 & exit"\n\n')#chkey backfile ' + backfile + ' exit"\n\n')
            file.write("echo 'Converting files into SPEX format using trafo.sh'\n\n")
#            file.write("echo 'STOP HERE TO MAKE SURE TRAFO IS CONFIGURED PROPERLY'\n\n\n\n")
            if SPEX:
                file.write('if [ -e xaf_' + obsids[jj] + '_' + str(ii) + '.grp ]; then\ntrafo << EOF\n1\n1\n10000\n1\nxaf_' + obsids[jj] + '_' + str(ii) + '.grp\ny\ny\n0\nxaf_' + obsids[jj] + '_' + str(ii) + '\nxaf_' + obsids[jj] + '_' + str(ii) + '\nEOF\nfi\n')
            
            file.write('tar -cf xaf_' + obsids[jj] + '_' + str(ii) + '.tar *' + obsids[jj] + '_' + str(ii) + '*\n')
            file.write('gzip xaf_' + obsids[jj] + '_' + str(ii) + '.tar\n')
    
            file.write('mv xaf_' + obsids[jj] + '_' + str(ii) + '.tar.gz ' + compresseddir + '\n\n')
#            file.write('cp *.res *.spo '+ specfile_outputdir + '\n')
#            file.write('rm *.arf *.pi *.rmf\n')

            x = x+1
            file.write("echo 'Observation " + obsids[jj] + " (" + str(jj+1) + "/" + str(len(obsids)) + ") Region " + str(ii) + " (" + str(ii+1) + "/" + str(sexnum) + ") [..." + str((x/(len(obsids)*sexnum-1))*100) + "% Done!]'\n\n")


#       MANUAL METHOD SANS BACKGROUND
#                x = 0
#                # Loops for taking the relevant Chandra files for grouping and eventually making spectral fits out of them
#                for ii in list(range(sexnum)): #len(obsids)
#                    for jj in list(range(len(obsids))): #regnum
#                        file.write("echo 'Observation " + obsids[jj] + " (" + str(jj+1) + "/" + str(len(obsids)) + ") Region " + str(ii) + " (" + str(ii+1) + "/" + str(regnum) + ")'\n")
#                        file.write("echo 'Extract region of interest'\n")
#                        file.write('punlearn dmextract\npset dmextract error=gaussian\n')
#                        file.write('dmextract "' + parentdir + '/' + obsids[jj] + '/repro/evt2-holes.fits[sky=region(' + inputdir +'/xaf_' + str(ii) + '_sex.reg)][bin pi=1:1024:1]" xaf_' + obsids[jj] + '_' + str(ii) + '.spec clobber=yes\n\n')
#                
#                        file.write("echo 'Make arf and rmf files'\n")
#                        asol = os.popen('ls ' + parentdir + '/' + obsids[jj] + '/repro/*asol1.fits').read()
#                        file.write('asphist infile="' + asol[0:len(asol)-1] + '" outfile=asp_' + obsids[jj] + '_' + str(ii) + '.hist evtfile="' + parentdir + '/' + obsids[jj] + '/repro/evt2-holes.fits[sky=region(' + inputdir +'/xaf_' + str(ii) + '_sex.reg)]" clobber=yes\n')#[sky=region(' + inputdir +'/xaf_' + str(ii) + '_sex.reg)]
#            
#                        file.write('sky2tdet "' + parentdir + '/' + obsids[jj] + '/repro/evt2-holes.fits[sky=region(' + inputdir +'/xaf_' + str(ii) + '_sex.reg)][bin sky]" asp_' + obsids[jj] + '_' + str(ii) + '.hist "xaf_' + obsids[jj] + '_' + str(ii) + '_wmap.fits[wmap]" clobber=yes\n\n')
#                
#                        #asol = os.popen('ls ' + parentdir + obsids[jj] + '/repro/*asol1.fits').read()
#                        #pbk = os.popen('ls ' + parentdir + obsids[jj] + '/repro/*pbk0.fits').read()
#                        file.write('punlearn mkwarf\n')#pset mkwarf threshold=0\n')#pset mkwarf asolfile=' + asol + '\n')
#            
#                        file.write('mkwarf "xaf_' + obsids[jj] + '_' + str(ii) + '_wmap.fits[wmap]" xaf_' + obsids[jj] + '_' + str(ii) + '.warf xaf_' + obsids[jj] + '_' + str(ii) + '.wgt NONE 0.35:9.5:0.01 pbkfile="" clobber=yes\n\n')# + pbk + '\n\n')
#                
#                        warffile = 'xaf_' + obsids[jj] + '_' + str(ii) + '.warf'
#                
#                        file.write('mkrmf CALDB xaf_' + obsids[jj] + '_' + str(ii) + '.wrmf weights=xaf_' + obsids[jj] + '_' + str(ii) + '.wgt axis1="energy=0:1" axis2="pi=1:1024:1" clobber=yes\n\n')
#                        resp = 'xaf_' + obsids[jj] + '_' + str(ii) + '.wrmf'
#                
#                        file.write('grppha xaf_' + obsids[jj] + '_' + str(ii) + '.spec xaf_' + obsids[jj] + '_' + str(ii) + '.grp "chkey RESPFILE ' + resp + ' & chkey ANCRFILE ' + warffile + ' & group min 1 & exit"\n\n')#chkey backfile ' + backfile + ' exit"\n\n')
#                        file.write("echo 'Converting files into SPEX format using trafo.sh'\n")
#                        file.write('if [ -e xaf_' + obsids[jj] + '_' + str(ii) + '.grp ]; then\ntrafo << EOF\n1\n1\n10000\n1\nxaf_' + obsids[jj] + '_' + str(ii) + '.grp\nn\ny\ny\n0\nxaf_' + obsids[jj] + '_' + str(ii) + '\nxaf_' + obsids[jj] + '_' + str(ii) + '\nEOF\nfi\n')
#                        
#                        file.write('tar -cf xaf_' + obsids[jj] + '_' + str(ii) + '.tar *' + obsids[jj] + '_' + str(ii) + '*\n')
#                        file.write('gzip xaf_' + obsids[jj] + '_' + str(ii) + '.tar\n')
#                
#                        file.write('mv xaf_' + obsids[jj] + '_' + str(ii) + '.tar.gz ' + compresseddir + '\n\n')
#                        file.write('cp *.res *.spo '+ specfile_outputdir + '\n')
#                        file.write('rm *.hist *.grp *.spec *.warf *.wgt *wmap* *.wrmf *.res *.spo\n')
#                        x = x+1
#            
#                        file.write("echo 'Observation " + obsids[jj] + " (" + str(jj+1) + "/" + str(len(obsids)) + ") Region " + str(ii) + " (" + str(ii+1) + "/" + str(regnum) + ") [..." + str((x/(len(obsids)*regnum-1))*100) + "% Done!]'\n\n")
    
    
    file2 = open('spexfitting.sh', 'w')
    # Loop for automating joint SPEX fittings
    file2.write('mkdir ' + resultsdir + '/spex\n')
    for ii in list(range(sexnum)):#len(obsids)
        file2.write('spex << EOF\n')
        for jj in list(range(len(obsids))): #regnum
            file2.write('data ' + specfile_outputdir + '/xaf_' + obsids[jj] + '_' + str(ii) + ' ' + specfile_outputdir + '/xaf_' + obsids[jj] + '_' + str(ii) + '\n')
        file2.write('ign 0.0:0.7 u k\nign 7.:200 u k\nfit meth cstat\n')
        file2.write('distance 0.0581 z\ncom reds\ncom hot\ncom cie\ncom rel 3 1,2\n')
        file2.write('pa 1 1 z v 0.0581\npa 1 1 z s f\n')
        file2.write('pa 1 2 nh v 4.11E-04\npa 1 2 t v 5.E-04\npa 1 2 nh s f\npa 1 2 t s f\n')
        file2.write('pa 1 3 n v 5.E+03\npa 1 3 t v 6\npa 1 3 06:28 v 0.4\n')
        #file2.write('pa 1 3 08 couple 1 3 26\npa 1 3 10 couple 1 3 26\npa 1 3 12 couple 1 3 26\npa 1 3 14 couple 1 3 26\npa 1 3 16 couple 1 3 26\npa 1 3 18 couple 1 3 26\npa 1 3 20 couple 1 3 26\npa 1 3 28 couple 1 3 26\n')
        file2.write('abund lodders\nelim 0.001:100. kev\nobin 0.7:7 u k\nfit print 1\n')
        file2.write('plot dev xs\nplot type data\nplot x log\nplot y log\nplot ux k\nplot uy k\nplot rx 0.6 7.2\nplot ry 0.0001 10\nplot back disp t\nplot set 1\nplot data col 1\nplot model col 2\nplot back col 3\nplot set all\nplot frame new\nplot frame 2\nplot type chi\nplot uy k\nplot ux k\nplot x log\nplot rx 0.6 7.2\nplot ry -0.35 0.35\nplot view def f\nplot view x 0.08 0.92\nplot view y 0.1 0.3\nplot cap y text "Rel. Error"\nplot cap ut disp f\nplot cap lt disp f\nplot cap id disp f\nplot frame 1\nplot view def f\nplot view x 0.08 0.92\nplot view y 0.3 0.9\nplot cap x disp f\nplot cap id disp f\nplot cap ut disp f\nplot cap lt text "Region '+ str(ii) + ' Spectra"\nplot box numlab bot f\nplot\npl fr 2\npl uy rel\npl rx 0.6 7.2\npl ry -4 4\npl fr 1\npl ry 0.00002 1.0\npl fr 1\npl rx 0.6 7.2\n')
        file2.write('fit meth cstat\nfit \nfit w m\nfit\nfit\nfit\nfit\nfit w m\nfit\nfit\nfit w m\nfit\n')
        file2.write('pl fr 2\npl uy dchi\nlog out ' + resultsdir + '/spex/reg_' + str(ii) + ' overwrite\np s\nmo sho\n')
        file2.write('error dchi 1.\nerror dchi 1.\nerror 1 3 n\nerror 1 3 t\nlog close out\npar write ' + resultsdir + '/spex/reg' + str(ii) + ' overwrite\npl dev cps ' + resultsdir + '/spex/reg' + str(ii) + '\npl\npl cl 2\nquit\n')
        file2.write('EOF\n\n')
    file2.close()
    
    file2 = open('xspecfitting.sh', 'w')
    file2.write('mkdir ' + resultsdir + '/xspec\n')
    file2.write('cp xspecfitting.sh ' + specfile_outputdir + '\n')
    for ii in list(range(sexnum)):#len(obsids)
        file3 = open(specfile_outputdir + '/reg_' + str(ii) + '_xspec_fit.script','w')
#        file3.write('xspec << EOF\n')
        file3.write('setplot energy\ncpd ' + resultsdir + '/xspec/reg_' + str(ii) + '_xspec_fit.ps/cps\n\n')
        for jj in list(range(len(obsids))): #regnum
            file3.write('data ' + str(jj+1) + ':' + str(jj+1) + ' ' + specfile_outputdir + '/xaf_' + obsids[jj] + '_' + str(ii) + '.grp\n/*\n')
            file3.write('ig ' + str(jj+1) + ':' + str(jj+1) + ' bad\nig ' + str(jj+1) + ':' + str(jj+1) + ' **-0.5 7.5-**\n')
        file3.write('\nmo phabs(apec)\n/*\nnewpar 1 0.041 -1\nnewpar 2 5.\nnewpar 3 0.3\nnewpar 4 0.058100 -1\nthaw 3\nquery yes\nfit\nsetplot back\nfit\npl ld res\n\n')
        file3.write('set fileall [open ' + resultsdir + '/xspec/reg_' + str(ii) + '_data.xcm w 0600]\n')
        file3.write('tclout param 1\nscan $xspec_tclout "%f" nh\ntclout param 2\nscan $xspec_tclout "%f" temp\nerror 1. 2\ntclout error 2\nscan $xspec_tclout "%f %f" temp_low temp_high\ntclout param 3\nscan $xspec_tclout "%f" abundance\nerror 1. 3\ntclout error 3\nscan $xspec_tclout "%f %f" abundance_low abundance_high\ntclout param 4\nscan $xspec_tclout "%f" redshift\ntclout param 5\nscan $xspec_tclout "%f" norm1\nerror 1. 5\ntclout error 5\nscan $xspec_tclout "%f %f" norm1_low norm1_high\ntclout stat\nscan $xspec_tclout "%f" chi\ntclout dof\nscan $xspec_tclout "%f" dof\n')
        file3.write('puts $fileall "$nh $temp $temp_low $temp_high $abundance $abundance_low $abundance_high $redshift $norm1 $norm1_low $norm1_high $chi $dof"\nclose $fileall\n\n')
        file3.write('cpd none\nsave all ' + resultsdir + '/xspec/reg_' + str(ii) + '_savestate.tcl\nquit y\n')
#        file3.write('EOF\n\n')
        file3.close()
        file2.write('xspec - reg_' + str(ii) + '_xspec_fit.script\n')
    file2.close()
    
    #file.write('cp spexfitting.sh ' + specfile_outputdir + '/\n')
    #file.write('cp spexoutparsing.py ' + specfile_outputdir + '/results\n')
    #file.write('cp mkmaps.py ' + specfile_outputdir + '/results\n')
    #file.write('cd ' + specfile_outputdir + '/\n')
    
    subprocess.run('cp xspecfitting.sh ' + specfile_outputdir, shell=True)
    
    file.close()

#%%
def ParseOutput(inputdir):
    if SPEX:
        stringtomatch = 'Errors'
        file = open('regions-info-spex.data', 'w')
        file.write('region norm norm_low norm_high norm_error_low norm_error_high norm_error_diff temperature temp_low temp_high temp_error_low temp_error_high temp_error_diff\n')# pressure press_low press_high press_error_low press_error_high press_error_diff entropy entro_low entro_high entro_error_low entro_error_high entro_error_diff\n')
        
        #loop over regions here
        for ii in list(range(sexnum-1)):#regnum
            _filter_txt_lines_to(inputdir + '/spex/reg_' + str(ii) + '.out',stringtomatch,inputdir + '/spex/reg_' + str(ii) + '.data')
            
            text = _txt_lines_with(inputdir + '/spex/reg_' + str(ii) + '.out',stringtomatch)
            joinedlines = '\n'.join(text)
            
            norm = str(float(_get_lines_with(joinedlines,'3 norm')[0].split()[4]))
            normelow = str(float(_get_lines_with(joinedlines,'3 norm')[0].split()[6]))
            normehigh = str(float(_get_lines_with(joinedlines,'3 norm')[0].split()[8]))
            normlow = str(float(norm) + float(normelow))
            normhigh = str(float(norm) + float(normehigh))
            normerange = str(float(normehigh) + np.abs(float(normelow)))
            
            temp = str(round(float(_get_lines_with(joinedlines,'3 t')[0].split()[5]),5))
            tempelow = str(round(float(_get_lines_with(joinedlines,'3 t')[0].split()[7]),5))
            tempehigh = str(round(float(_get_lines_with(joinedlines,'3 t')[0].split()[9]),5))
            templow = str(round(float(temp) + float(tempelow),5))
            temphigh = str(round(float(temp) + float(tempehigh),5))
            temperange = str(round(float(tempehigh) + np.abs(float(tempelow)),5))
            
            #	press = str(round(float(norm)*float(temp),5))
            #	presselow = str(round(float(normelow)*float(tempelow),5))
            #	pressehigh = str(round(float(normehigh)*float(tempehigh),5))
            #	presslow = str(round(float(normlow)*float(templow),5))
            #	presshigh = str(round(float(normhigh)*float(temphigh),5))
            #	presserange = str(round(float(pressehigh) + np.abs(float(presselow)),5))
            
            #	entropy = str(round(float(temp)/(float(norm)**(2/3)),5))
            #	entroelow = str(round(float(tempelow)/(float(normelow)**(2/3)),5))
            #	entroehigh = str(round(float(tempehigh)/(float(normehigh)**(2/3)),5))
            #	entrolow = str(round(float(templow)/(float(normlow)**(2/3)),5))
            #	entrohigh = str(round(float(temphigh)/(float(normhigh)**(2/3)),5))
            #	entroerange = str(round(float(entroehigh) + np.abs(float(entroelow)),5))
            	
            file.write(str(ii) + ' ' + norm + ' ' + normlow + ' ' + normhigh + ' ' + normelow + ' ' + normehigh + ' ' + normerange + ' ' + temp + ' ' + templow + ' ' + temphigh + ' ' + tempelow + ' ' + tempehigh + ' ' + temperange + '\n')# + ' ' + press + ' ' + presselow + ' ' + pressehigh + ' ' + presslow + ' ' + presshigh + ' ' + presserange + ' ' + entropy + ' ' + entroelow + ' ' + entroehigh + ' ' + entrolow + ' ' + entrohigh + ' ' + entroerange + '\n')
        file.close()

    if XSPEC:
        file = open('regions-info-xspec.data', 'w')
        file.write('region nH temperature temp_low temp_high temp_error_low temp_error_high temp_error_diff abundance abund_low abund_high abund_error_low abund_error_high abund_error_diff redshift norm norm_low norm_high norm_error_low norm_error_high norm_error_diff chi dof chi2\n')
        
        #loop over regions here
        for ii in list(range(sexnum)):#regnum
            regdata = open(inputdir + '/xspec/reg_' + str(ii) + '_data.xcm','r')
            info = regdata.read().split()
            
            nh = str(info[0])
            
            temp = str(info[1])
            templow = str(info[2])
            temphigh = str(info[3])
            tempelow = str(round(float(temp) - float(templow),5))
            tempehigh = str(round(float(temphigh) - float(temp),5))
            temperange = str(round(float(tempehigh) + np.abs(float(tempelow)),5))
            
            abund = str(info[4])
            abundlow = str(info[5])
            abundhigh = str(info[6])
            abundelow = str(round(float(abund) - float(abundlow),5))
            abundehigh = str(round(float(abundhigh) - float(abund),5))
            abunderange = str(round(float(abundehigh) + np.abs(float(abundelow)),5))
            
            redshift = str(info[7])
            
            norm = str(info[8])
            normlow = str(info[9])
            normhigh = str(info[10])
            normelow = str(float(norm) - float(normlow))
            normehigh = str(float(normhigh) - float(norm))
            normerange = str(round(float(normehigh) + np.abs(float(normelow)),5))
            
            chi = str(info[11])
            dof = str(info[12])
            chi2 = str(round(float(chi)/float(dof),5))
    
            file.write(str(ii) + ' ' + nh + ' ' + temp + ' ' + templow + ' ' + temphigh + ' ' + tempelow + ' ' + tempehigh + ' ' + temperange + ' ' + abund + ' ' + abundlow + ' ' + abundhigh + ' ' + abundelow + ' ' + abundehigh + ' ' + abunderange + ' ' + redshift + ' ' + norm + ' ' + normlow + ' ' + normhigh + ' ' + normelow + ' ' + normehigh + ' ' + normerange + ' ' + chi + ' ' + dof + ' ' + chi2 + '\n')# + ' ' + press + ' ' + presselow + ' ' + pressehigh + ' ' + presslow + ' ' + presshigh + ' ' + presserange + ' ' + entropy + ' ' + entroelow + ' ' + entroehigh + ' ' + entrolow + ' ' + entrohigh + ' ' + entroerange + '\n')
        file.close()

def _get_lines_with(input_str, substr):
	"""
	Get all lines containing a substring.
 
	Args:
		input_str (str): String to get lines from.
		substr (str): Substring to look for in lines.
 
	Returns:
		list[str]: List of lines containing substr.
	"""
	lines = []
	for line in input_str.strip().split('\n'):
		if substr in line:
			lines.append(line)
	return lines
 
 
def _txt_lines_with(fname, substr):
	"""
	Get all lines in a .txt file containing a substring.
	
	Args:
		fname (str): File name to open.
		substr (str): Substring to look for in lines.
 
	Returns:
		list[str]: List of lines containing substr.
	"""
	f_contents = open(fname, 'r').read()
	return _get_lines_with(f_contents, substr)
 
 
def _filter_txt_lines_to(fname_in, substr, fname_out):
	"""
	Put lines from one .txt file into another if they
	contain a substring 'substr'.
 
	Args:
		fname_in (str): Source file.
		substr (str): Substring to look for in lines.
		fname_out (str): Destination file.
	"""
	filtered_lines = _txt_lines_with(fname_in, substr)
	joined_lines = '\n'.join(filtered_lines)
	open(fname_out, 'w').write(joined_lines)# + '\n'
    
#%%
def MakeMaps(inputdata,binmap):
    if SPEX:
        #REGION DATA
        #da = pd.read_csv(inputdata)
        #header = list(da.columns)[0].split()
        data = pd.read_csv(inputdata, delimiter=' ', index_col=0)
        #datt = pd.read_csv(inputdata, delimiter=' ', index_col=0).transpose()
        region=[];
        norm=[];norm_low=[];norm_high=[];norm_error_low=[];norm_error_high=[];norm_error_diff=[]
        temp=[];temp_low=[];temp_high=[];temp_error_low=[];temp_error_high=[];temp_error_diff=[]
        #press=[];press_low=[];press_high=[];press_error_low=[];press_error_high=[];press_error_diff=[]
        #entro=[];entro_low=[];entro_high=[];entro_error_low=[];entro_error_high=[];entro_error_diff=[]
        for index,row in data.iterrows():
            region.append(index)
            norm.append(round(row['norm'],4))
            norm_low.append(round(row['norm_low'],4))
            norm_high.append(round(row['norm_high'],4))
            norm_error_low.append(round(row['norm_error_low'],4))
            norm_error_high.append(round(row['norm_error_high'],4))
            norm_error_diff.append(round(row['norm_error_diff'],4))
            temp.append(round(row['temperature'],4))
            temp_low.append(round(row['temp_low'],4))
            temp_high.append(round(row['temp_high'],4))
            temp_error_low.append(round(row['temp_error_low'],4))
            temp_error_high.append(round(row['temp_error_high'],4))
            temp_error_diff.append(round(row['temp_error_diff'],4))
            
    if XSPEC:
        data = pd.read_csv(inputdata, delimiter=' ', index_col=0)
        mapdata = data[0:168]
        region = [];nh = [];temp=[];temp_low=[];temp_high=[];temp_error_low=[];temp_error_high=[];temp_error_diff=[]
        abund=[];abund_low=[];abund_high=[];abund_error_low=[];abund_error_high=[];abund_error_diff=[];redshift=[]
        norm=[];norm_low=[];norm_high=[];norm_error_low=[];norm_error_high=[];norm_error_diff=[]
        chi=[];dof=[];chi2=[]
        for index,row in mapdata.iterrows():
            region.append(index)
            nh.append(round(row['nH'],4))
            temp.append(round(row['temperature'],4))
            temp_low.append(round(row['temp_low'],4))
            temp_high.append(round(row['temp_high'],4))
            temp_error_low.append(round(row['temp_error_low'],4))
            temp_error_high.append(round(row['temp_error_high'],4))
            temp_error_diff.append(round(row['temp_error_diff'],4))
            abund.append(round(row['abundance'],4))
            abund_low.append(round(row['abund_low'],4))
            abund_high.append(round(row['abund_high'],4))
            abund_error_low.append(round(row['abund_error_low'],4))
            abund_error_high.append(round(row['abund_error_high'],4))
            abund_error_diff.append(round(row['abund_error_diff'],4))
            redshift.append(round(row['redshift'],4))
            norm.append(round(row['norm'],4))
            norm_low.append(round(row['norm_low'],4))
            norm_high.append(round(row['norm_high'],4))
            norm_error_low.append(round(row['norm_error_low'],4))
            norm_error_high.append(round(row['norm_error_high'],4))
            norm_error_diff.append(round(row['norm_error_diff'],4))
            chi.append(round(row['chi'],4))
            dof.append(round(row['dof'],4))
            chi2.append(round(row['chi2'],4))
            
            
    cfdata = data[168:len(data)]
    cftemp = [];cfabund = [];cfnorm = [];cfchi2 = []
    for index,row in cfdata.iterrows():
        cftemp.append(round(row['temperature'],4))
        cfabund.append(round(row['abundance'],4))
        cfnorm.append(round(row['norm'],4))
        cfchi2.append(round(row['chi2'],4))
        
    #Regions are all mixed up, had to fix manually
    longtemp = [cftemp[4],cftemp[3],cftemp[2],cftemp[1],cftemp[0],cftemp[5],cftemp[6],cftemp[7]]
    longabund = [cfabund[4],cfabund[3],cfabund[2],cfabund[1],cfabund[0],cfabund[5],cfabund[6],cfabund[7]]
    longnorm = [cfnorm[4],cfnorm[3],cfnorm[2],cfnorm[1],cfnorm[0],cfnorm[5],cfnorm[6],cfnorm[7]]
    longchi2 = [cfchi2[4],cfchi2[3],cfchi2[2],cfchi2[1],cfchi2[0],cfchi2[5],cfchi2[6],cfchi2[7]]
    shlefttemp = [cftemp[9],cftemp[11],cftemp[12],cftemp[13],cftemp[14],cftemp[15],cftemp[16],cftemp[17],cftemp[8],cftemp[25],cftemp[26]]
    shleftabund = [cfabund[9],cfabund[11],cfabund[12],cfabund[13],cfabund[14],cfabund[15],cfabund[16],cfabund[17],cfabund[8],cfabund[25],cfabund[26]]
    shleftnorm = [cfnorm[9],cfnorm[11],cfnorm[12],cfnorm[13],cfnorm[14],cfnorm[15],cfnorm[16],cfnorm[17],cfnorm[8],cfnorm[25],cfnorm[26]]
    shleftchi2 = [cfchi2[9],cfchi2[11],cfchi2[12],cfchi2[13],cfchi2[14],cfchi2[15],cfchi2[16],cfchi2[17],cfchi2[8],cfchi2[25],cfchi2[26]]
    shrighttemp = [cftemp[10],cftemp[18],cftemp[19],cftemp[20],cftemp[21],cftemp[22],cftemp[23],cftemp[24],cftemp[27],cftemp[28],cftemp[29]]
    shrightabund = [cfabund[10],cfabund[18],cfabund[19],cfabund[20],cfabund[21],cfabund[22],cfabund[23],cfabund[24],cfabund[27],cfabund[28],cfabund[29]]
    shrightnorm = [cfnorm[10],cfnorm[18],cfnorm[19],cfnorm[20],cfnorm[21],cfnorm[22],cfnorm[23],cfnorm[24],cfnorm[27],cfnorm[28],cfnorm[29]]
    shrightchi2 = [cfchi2[10],cfchi2[18],cfchi2[19],cfchi2[20],cfchi2[21],cfchi2[22],cfchi2[23],cfchi2[24],cfchi2[27],cfchi2[28],cfchi2[29]]

    f, axarr = plt.subplots(2,2)
    f.suptitle('Long Regions')
    axarr[0, 0].plot(list(range(len(longtemp))), longtemp)
    axarr[0, 0].set_title('Temperature')
    axarr[0, 1].scatter(list(range(len(longtemp))), longabund)
    axarr[0, 1].set_title('Abundance')
    axarr[1, 0].plot(list(range(len(longtemp))), longnorm)
    axarr[1, 0].set_title('Norm')
    axarr[1, 1].scatter(list(range(len(longtemp))), longchi2)
    axarr[1, 1].set_title('$\chi^2$')
    f.savefig('longregions.png', bbox_inches='tight')
    
    f, axarr = plt.subplots(2,2)
    f.suptitle('Short Left Regions')
    axarr[0, 0].plot(list(range(len(shlefttemp))), shlefttemp)
    axarr[0, 0].set_title('Temperature')
    axarr[0, 1].scatter(list(range(len(shlefttemp))), shleftabund)
    axarr[0, 1].set_title('Abundance')
    axarr[1, 0].plot(list(range(len(shlefttemp))), shleftnorm)
    axarr[1, 0].set_title('Norm')
    axarr[1, 1].scatter(list(range(len(shlefttemp))), shleftchi2)
    axarr[1, 1].set_title('$\chi^2$')
    f.savefig('shortleftregions.png', bbox_inches='tight')
    
    f, axarr = plt.subplots(2,2)
    f.suptitle('Short Right Regions')
    axarr[0, 0].plot(list(range(len(shrighttemp))), shrighttemp)
    axarr[0, 0].set_title('Temperature')
    axarr[0, 1].scatter(list(range(len(shrighttemp))), shrightabund)
    axarr[0, 1].set_title('Abundance')
    axarr[1, 0].plot(list(range(len(shrighttemp))), shrightnorm)
    axarr[1, 0].set_title('Norm')
    axarr[1, 1].scatter(list(range(len(shrighttemp))), shrightchi2)
    axarr[1, 1].set_title('$\chi^2$')
    f.savefig('shortrightregions.png', bbox_inches='tight')
        
        
    
    #IMAGE DATA
    im = fits.open(binmap)
    hdr = im[0].header
    imdata = im[0].data
    #we = wcs.WCS(hdr)
    
    def _mkmap(input,output,head):
        #hdu = fits.PrimaryHDU(input)
        fits.writeto(output,input,head,overwrite=True)
    
    
    def _printmap2(input,output):
        f = plt.figure()
        plt.subplot(111, projection=wcs)
        plt.imshow(input, origin='lower', cmap=plt.cm.viridis)
        ax = plt.subplot(projection=wcs)
        ax.imshow(input, origin='lower', cmap=plt.cm.viridis)
        ax.coords.grid(True, color='white', ls='solid')
        ax.coords[0].set_axislabel('Galactic Longitude')
        ax.coords[1].set_axislabel('Galactic Latitude')
        overlay = ax.get_coords_overlay('fk5')
        overlay.grid(color='white', ls='dotted')
        overlay[0].set_axislabel('Right Ascension (J2000)')
        overlay[1].set_axislabel('Declination (J2000)')
        f.savefig(output, bbox_inches='tight')
    
    ## NORM MAPS
    boolmask = [];region_pixsum = []
    for ii in region:
        imreg = imdata == ii
        region_pixsum.append(np.count_nonzero(imreg.astype(np.int)))
        boolmask.append(((imreg.astype(np.int))*norm[ii]/region_pixsum[ii]))
    
    normmap = sum(boolmask)
    _mkmap(normmap,"norm_map.fits",hdr)
    #_printmap(normmap,"norm_map.pdf")
    
    boolmask = [];region_pixsum = []
    for ii in region:
        imreg = imdata == ii
        region_pixsum.append(np.count_nonzero(imreg.astype(np.int)))
        boolmask.append(((imreg.astype(np.int))*norm_error_diff[ii]/region_pixsum[ii]))
    
    normerrordepthmap = sum(boolmask)
    _mkmap(normerrordepthmap,"norm_errordepthmap.fits",hdr)
    #_printmap(normerrordepthmap,"norm_errordepthmap.pdf")
    
    
    ## TEMP MAPS
    boolmask = []
    for ii in region:
        imreg = imdata == ii
        boolmask.append((imreg.astype(np.int))*temp[ii])
    
    tempmap = sum(boolmask)
    #tempmap[tempmap >= 18] = np.nan
    _mkmap(tempmap,"temp_map.fits",hdr)
    #_printmap(tempmap,"temp_map.pdf")
    
    boolmask = []
    for ii in region:
        imreg = imdata == ii
        boolmask.append((imreg.astype(np.int))*temp_error_diff[ii])
    
    temperrordepthmap = sum(boolmask)
    _mkmap((temperrordepthmap/2),"temp_error_map.fits",hdr)
    #_printmap(temperrordepthmap,"temp_errordepthmap.pdf")
    
    
    ## ABUND MAPS
    boolmask = []
    for ii in region:
        imreg = imdata == ii
        boolmask.append((imreg.astype(np.int))*abund[ii])
    
    abundmap = sum(boolmask)
    #tempmap[tempmap >= 18] = np.nan
    _mkmap(abundmap,"abund_map.fits",hdr)
    #_printmap(tempmap,"temp_map.pdf")
    
    boolmask = []
    for ii in region:
        imreg = imdata == ii
        boolmask.append((imreg.astype(np.int))*abund_error_diff[ii])
    
    abunderrordepthmap = sum(boolmask)
    _mkmap((abunderrordepthmap/2),"abund_error_map.fits",hdr)
    #_printmap(temperrordepthmap,"temp_errordepthmap.pdf")
    
    
    
    ##ENTROPY/PRESSURE MAPS
    entropymap = tempmap/(normmap**(2/3))
    entroerrordepthmap = (temperrordepthmap/2)/((normerrordepthmap/2)**(2/3))
    pressuremap = normmap*tempmap
    presserrordepthmap = (normerrordepthmap/2)*(temperrordepthmap/2)
    
    _mkmap(entropymap,"entropy_map.fits",hdr)
    _mkmap(pressuremap,"pressure_map.fits",hdr)
    _mkmap(entroerrordepthmap,"entropy_errordepthmap.fits",hdr)
    _mkmap(presserrordepthmap,"pressure_errordepthmap.fits",hdr)

#%%
def CleanUp(output):
    subprocess.run('mkdir ' + output, shell=True)
    subprocess.run('cp *.fits *.data *.png ' + output, shell=True)
    
    
    
##%%
#    
## Original inpainting code by Davide Lasagna https://github.com/gasagna/openpiv-python/blob/master/openpiv/src/lib.pyx
## Cython removed and Gaussian kernel code added by opit (http://technarium.lt)
## Note that the Gaussian kernel has a default standard deviation equal to 3 and is normalised to sum up to 1 to preserve flux, which means that for larger standard deviation you'd have to increase the kernel size to avoid artifacts.
## Matplotlib used for testing only.
#
#
##from inpaint import *
##import matplotlib.pyplot as plt
#
#
#def inpaint_array(inputArray, mask):
#	maskedImg = np.ma.array(inputArray, mask = mask)
#	NANMask =  maskedImg.filled(np.NaN)
#	badArrays, num_badArrays = ndimage.label(mask)
#	data_slices = ndimage.find_objects(badArrays)
#	filled = replace_nans(NANMask, max_iter=20, tol=0.05, kernel_radius=5, kernel_sigma=2, method='idw')
#	return filled
#
#
## Original inpainting code (replace_nans) by Davide Lasagna https://github.com/gasagna/openpiv-python/blob/master/openpiv/src/lib.pyx
## Cython removed and Gaussian kernel code added by opit (https://github.com/astrolitterbox)
## Note that the Gaussian kernel has a default standard deviation equal to 3 and is normalised to sum up to 1 to preserve flux, which means that for larger standard deviation you'd have to increase the kernel size to avoid artifacts.
#
#
#def makeGaussian(sizex, sizey, sigma):
#	x, y = np.mgrid[0:sizex:1, 0:sizey:1]
#	pos = np.empty(x.shape + (2,))
#	pos[:, :, 0] = x; pos[:, :, 1] = y
#	rv = multivariate_normal(mean=[sizex/2,sizey/2], cov=[[sigma,0],[0,sigma]])
#	return rv.pdf(pos)/np.sum(rv.pdf(pos))
#
#def replace_nans(array, max_iter=50, tol=0.05, kernel_radius=2, kernel_sigma=2, method='idw'):
#	"""Replace NaN elements in an array using an iterative image inpainting algorithm.
#	The algorithm is the following:
#	1) For each element in the input array, replace it by a weighted average
#	of the neighbouring elements which are not NaN themselves. The weights depends
#	of the method type. If ``method=localmean`` weight are equal to 1/( (2*kernel_size+1)**2 -1 )
#	2) Several iterations are needed if there are adjacent NaN elements.
#	If this is the case, information is "spread" from the edges of the missing
#	regions iteratively, until the variation is below a certain threshold.
#	Parameters
#	----------
#	array : 2d np.ndarray
#	an array containing NaN elements that have to be replaced
#	max_iter : int
#	the number of iterations
#	kernel_size : int
#	the size of the kernel, default is 1
#	method : str
#	the method used to replace invalid values. Valid options are
#	`localmean`, 'idw'.
#	Returns
#	-------
#	filled : 2d np.ndarray
#	a copy of the input array, where NaN elements have been replaced.
#	"""
#	kernel_size = kernel_radius*2+1
#	filled = np.empty( [array.shape[0], array.shape[1]])
#	kernel = np.empty( (2*kernel_size+1, 2*kernel_size+1))
#	
#	# indices where array is NaN
#	inans, jnans = np.nonzero( np.isnan(array) )
#	
#	# number of NaN elements
#	n_nans = len(inans)
#	
#	# arrays which contain replaced values to check for convergence
#	replaced_new = np.zeros( n_nans)
#	replaced_old = np.zeros( n_nans)
#	
#	# depending on kernel type, fill kernel array
#	if method == 'localmean':
#	  
#		print('kernel_size', kernel_size)
#		for i in range(kernel_size):
#			for j in range(kernel_size):
#				kernel[i,j] = 1
##		print(kernel, 'kernel')
#
#	elif method == 'idw':
#		kernel = makeGaussian(kernel_size,kernel_size,kernel_sigma)
##		print(kernel.shape, 'kernel')
#	else:
#		raise ValueError( 'method not valid.')
#	
#	# fill new array with input elements
#	for i in range(array.shape[0]):
#		for j in range(array.shape[1]):
#			filled[i,j] = array[i,j]
#
#	# make several passes
#	# until we reach convergence
#	for it in range(max_iter):
#		# for each NaN element
#		for k in range(n_nans):
#			i = inans[k]
#			j = jnans[k]
#			
#			# initialize to zero
#			filled[i,j] = 0.0
#			n = 0
#			
#			# loop over the kernel
#			for I in range(kernel_size):
#				for J in range(kernel_size):
#				   
#					# if we are not out of the boundaries
#					if i+I-kernel_radius < array.shape[0] and i+I-kernel_radius >= 0:
#						if j+J-kernel_radius < array.shape[1] and j+J-kernel_radius >= 0:
#												
#							# if the neighbour element is not NaN itself.
#							if filled[i+I-kernel_radius, j+J-kernel_radius] == filled[i+I-kernel_radius, j+J-kernel_radius] :
#								
#								# do not sum itself
#								if I-kernel_radius != 0 and J-kernel_radius != 0:
#									
#									# convolve kernel with original array
#									filled[i,j] = filled[i,j] + filled[i+I-kernel_radius, j+J-kernel_radius]*kernel[I, J]
#									n = n + 1*kernel[I,J]
#
#			# divide value by effective number of added elements
#			if n != 0:
#				filled[i,j] = filled[i,j] / n
#				replaced_new[k] = filled[i,j]
#			else:
#				filled[i,j] = np.nan
#				
#		# check if mean square difference between values of replaced
#		#elements is below a certain tolerance
##		print('tolerance', np.mean( (replaced_new-replaced_old)**2 ))
#		if np.mean( (replaced_new-replaced_old)**2 ) < tol:
#			break
#		else:
#			for l in range(n_nans):
#				replaced_old[l] = replaced_new[l]
#	return filled
#%%
if __name__ == '__main__':
    main()

