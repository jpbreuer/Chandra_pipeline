#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Apr  9 14:29:50 2019

@author: jpbreuer
"""


import re
import sys
import os
import subprocess

import numpy as np
import pandas as pd

import scipy.ndimage as ndimage
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

#%%


temperror = '/home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/maps/temp_errordepthmap.fits'
densmap = '/home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn33_smooth100/maps/density_map.fits'
denserror = '/home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn33_smooth100/maps/density_errordepthmap.fits'
#presmap = '/home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn33_smooth100/maps/better_pressure_map.fits'
#radtempmap = '/home/jpbreuer/Scripts/chandra_pipeline/radial_temp.fits'
#entropmap = '/home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn33_smooth100/maps/better_entropy_map.fits'
tempmap = '/home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/maps/temp_map.fits'
#temperrorhighmap = '/home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn142_smooth100/maps/temp_error_high_map.fits'
#temperrorlowmap = '/home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn142_smooth100/maps/temp_error_low_map.fits'

sn_per_region = 33
reg_smoothness = 100
#binmap = '/home/jpbreuer/Chandra_data/a2256/merged/contbin_sn' + str(sn_per_region) + '_smooth' + str(reg_smoothness) + '/contbin_binmap.fits'
binmap = './contbin_binmap_33.fits'
#mapsdir = '/home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn' + str(sn_per_region) + '_smooth' + str(reg_smoothness) + '/maps/'

movex = 725; movey = 759

SPEX=False
XSPEC=True


#%%
def main():
#    LoadData('./regions-info-xspec-sn' + str(sn_per_region) + '.data')
#    MakeBasicMaps('./regions-info-xspec-sn33.data',binmap)
#    MakeBasicMaps('./regions-info-xspec-sn' + str(sn_per_region) + '.data',binmap) #temperature, density, abundance, pressure, entropy
    MixedMaps(tempmap,temperror,densmap,denserror) #better entropy, better pressure
#    CleanUp(mapsdir)
    
#    RadialAverage(movex,movey,tempmap)
#    ModelDividedMaps(data,model) #resid_div_data.fits
#    RadialAverage(movex,movey,presmap,'pressure')
#    RadialAverage(movex,movey,entropmap,'entropy')
#    RadialCompass(movex,movey,tempmap,temperrorhighmap,temperrorlowmap,0.6215,'temperature')
#    RadialCone(movex,movey,tempmap,temperrorhighmap,temperrorlowmap,0.6215,'temperature')
    
#    CheckErrorRatio('/home/jpbreuer/Research/PHD/Data/Chandra/results2256/A2256/Maps/sn33/regions-info-xspec-sn33.data')
    
#    ColdFrontPlot('/home/jpbreuer/Scripts/chandra_pipeline/regions-info-xspec-sn70.data')
#    ShockFrontPlot('/home/jpbreuer/Chandra_data/a2256/merged/northprobe/xspec/regions-info-xspec.data')

#%%
def _mkmap(input,output,head):
    #hdu = fits.PrimaryHDU(input)
    fits.writeto(output,input,head,overwrite=True)

def CleanUp(output):
    subprocess.run('mkdir ' + output, shell=True)
    subprocess.run('cp *.fits *.data *.png ' + output, shell=True)
    
#%%
    
#tempdat = fits.open(tempmap)
#temphead = tempdat[0].header
#tempdata = tempdat[0].data
#
#densdat = fits.open(densmap)
#denshead = densdat[0].header
#densdata = densdat[0].data
#
#presdat = fits.open(presmap)
#preshead = presdat[0].header
#presdata = presdat[0].data
#
#raddat = fits.open(radtempmap)
#radhead = raddat[0].header
#raddata = raddat[0].data
#
#endat = fits.open(entropmap)
#enhead = endat[0].header
#endata = endat[0].data

#RadialAverage(movex,movey,presmap)

#_mkmap()

#_mkmap(densdata*(tempdata*(tempdata/radialtemp)),"temp_div_pressure.fits",temphead)
#_mkmap(presdata-(densdata*(tempdata*(tempdata/radialtemp))),"pressure_residual.fits",preshead)

#%%

#sn33 = 0.2 average 
#sn70 = 0.08 average 
#sn100 = 0.05 average 
#sn142 = 0.04 average 
    
    
#%%
def CheckErrorRatio(inputdata):
    data = pd.read_csv(inputdata, delimiter=' ', index_col=0)
    #        mapdata = data[0:168]
    mapdata = data
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
            
       
    error_ratio = []
    for ii in list(range(len(temp))):
        error_ratio.append((temp_error_diff[ii]/2)/temp[ii])
    
    meanerror = np.mean(error_ratio)
    
    plt.title("Mean Error Temperature = " + str(meanerror))
    plt.scatter(list(range(len(error_ratio))),error_ratio)
    plt.ylim(0,0.3)
    plt.savefig('mean_error_temp.png', bbox_inches='tight')
    
#    error_ratio = []
#    for ii in list(range(len(temp))):
#        error_ratio.append((norm_error_diff[ii]/2)/norm[ii])
#    
#    meanerror = np.mean(error_ratio)
#
#    plt.title("Mean Error Norm = " + str(meanerror))
#    plt.scatter(list(range(len(error_ratio))),error_ratio)
#    plt.ylim(0,0.01)
#    plt.savefig('mean_error_norm.png', bbox_inches='tight')

#    entropy = []; pressure = []; entropyerr = []; pressureerr = [];
#    for ii in list(range(len(temp))):
#        entropy.append(temp[ii]/(norm[ii]**(2/3)))
#        pressure.append(norm[ii]*temp[ii])
#    
#    for ii in list(range(len(temp))):
#        entropyerr.append(np.abs(entropy[ii])*np.sqrt((((norm_error_diff[ii]/2)/norm[ii])**2) + (((temp_error_diff[ii]/2)/temp[ii])**2) + ((2*(norm_error_diff[ii]/2)*(temp_error_diff[ii]/2))/(norm[ii]*temp[ii]))))
#        pressureerr.append(pressure[ii]*np.sqrt((((temp_error_diff[ii]/2)/temp[ii])**2) + (((2/3)*(norm_error_diff[ii]/2)/norm[ii])**2) - ((2*(norm_error_diff[ii]/2)*(temp_error_diff[ii]/2))/(norm[ii]*temp[ii]))))
#
#    error_ratio = []
#    for ii in list(range(len(temp))):
#        error_ratio.append((entropyerr[ii]/2)/entropy[ii])
#    
#    meanerror = np.mean(error_ratio)
#    
#    plt.title("Mean Error Entropy = " + str(meanerror))
#    plt.scatter(list(range(len(error_ratio))),error_ratio)
#    plt.ylim(0,0.15)
#
#    error_ratio = []
#    for ii in list(range(len(temp))):
#        error_ratio.append((pressureerr[ii]/2)/pressure[ii])
#    
#    meanerror = np.mean(error_ratio)
#    
#    plt.title("Mean Error Pressure = " + str(meanerror))
#    plt.scatter(list(range(len(error_ratio))),error_ratio)
#    plt.ylim(0,0.15)    

#%%
    
def ErrorThreshMasking(inputfile,errordepth,threshold_percent,name):
    dat = fits.open(inputfile)
    head = dat[0].header
    data = dat[0].data
    errdat = fits.open(errordepth)
    errdata = errdat[0].data
    
    error_ratio = (errdata/2)/data
    _mkmap(error_ratio,name + "_error_range_percent_map.fits",head)
    
    error_threshold_mask = np.ones(np.shape(error_ratio))
    error_threshold_mask[error_threshold_mask > threshold_percent] = 0
    _mkmap(data*error_threshold_mask,name + "_error_thresholded_masked_map.fits",head)
    
    

#%%
def MakeBasicMaps(inputdata,binmap):
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
#        mapdata = data[0:168]
        mapdata = data
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
            
#    LoadData(inputdata)
    #IMAGE DATA
    im = fits.open(binmap)
    hdr = im[0].header
    imdata = im[0].data
    #we = wcs.WCS(hdr)
    
    
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
#        boolmask.append(((621.5*621.5*1000*(3.086*10**(21))*1.18*(1.67*10**(-27))*(imreg.astype(np.int))*norm[ii]/region_pixsum[ii])))
        #621.5*621.5*1000: volume kpc to cm, 621.5*621.5*1000*(3.086*10**(21)): particle number density*mean molecular weight in proton mass units 
#        boolmask.append(n_e*(imreg.astype(np.int)))
        
    normmap = sum(boolmask)
    _mkmap(normmap,"norm_map.fits",hdr)
    #_printmap(normmap,"norm_map.pdf")
    
    boolmask = [];region_pixsum = []
    for ii in region:
        imreg = imdata == ii
        region_pixsum.append(np.count_nonzero(imreg.astype(np.int)))
        boolmask.append(((imreg.astype(np.int))*norm_error_low[ii]/region_pixsum[ii]))
#        boolmask.append(((621.5*621.5*1000*(3.086*10**(21))*1.18*(1.67*10**(-27))*(imreg.astype(np.int))*norm[ii]/region_pixsum[ii])))
        #621.5*621.5*1000: volume kpc to cm, 621.5*621.5*1000*(3.086*10**(21)): particle number density*mean molecular weight in proton mass units 
#        boolmask.append(n_e*(imreg.astype(np.int)))
        
    normelowmap = sum(boolmask)
    _mkmap(normelowmap,"norm_error_low_map.fits",hdr)

    boolmask = [];region_pixsum = []
    for ii in region:
        imreg = imdata == ii
        region_pixsum.append(np.count_nonzero(imreg.astype(np.int)))
        boolmask.append(((imreg.astype(np.int))*norm_error_high[ii]/region_pixsum[ii]))
#        boolmask.append(((621.5*621.5*1000*(3.086*10**(21))*1.18*(1.67*10**(-27))*(imreg.astype(np.int))*norm[ii]/region_pixsum[ii])))
        #621.5*621.5*1000: volume kpc to cm, 621.5*621.5*1000*(3.086*10**(21)): particle number density*mean molecular weight in proton mass units 
#        boolmask.append(n_e*(imreg.astype(np.int)))
        
    normehighmap = sum(boolmask)
    _mkmap(normehighmap,"norm_error_high_map.fits",hdr)

    
    boolmask = [];region_pixsum = []
    for ii in region:
        imreg = imdata == ii
        region_pixsum.append(np.count_nonzero(imreg.astype(np.int)))
        boolmask.append(((imreg.astype(np.int))*norm_error_diff[ii]/region_pixsum[ii]))
    
    normerrordepthmap = sum(boolmask)
    _mkmap(normerrordepthmap,"norm_error_range_map.fits",hdr)
    #_printmap(normerrordepthmap,"norm_errordepthmap.pdf")
    
    
    ## Density MAPS 
    boolmask = [];region_pixsum = []
    for ii in region:
        imreg = imdata == ii
        region_pixsum.append(np.count_nonzero(imreg.astype(np.int)))
        K = norm[ii]; z = 0.058100; d_A = 233.5*(3.08568*10**24)#cm 
        EI = (K * 4 * np.pi * ((d_A * (z+1))**2))/(10**(-14))
        V = 0.6215*0.6215*1000*(2.938*10**(64)) # kpc to cm^3 
        n_e = np.sqrt(1.18 * EI/(V*region_pixsum[ii]))
#        boolmask.append(((imreg.astype(np.int))*norm[ii]/region_pixsum[ii]))
#        boolmask.append(((621.5*621.5*1000*(3.086*10**(21))*1.18*(1.67*10**(-27))*(imreg.astype(np.int))*norm[ii]/region_pixsum[ii])))
        #621.5*621.5*1000: volume kpc to cm, 621.5*621.5*1000*(3.086*10**(21)): particle number density*mean molecular weight in proton mass units 
        boolmask.append(n_e*(imreg.astype(np.int)))
    
    densmap = sum(boolmask)
    _mkmap(densmap,"density_map.fits",hdr)
    #_printmap(normmap,"norm_map.pdf")
    
    boolmask = [];region_pixsum = []
    for ii in region:
        imreg = imdata == ii
        region_pixsum.append(np.count_nonzero(imreg.astype(np.int)))
        Kerr = norm_error_diff[ii]; z = 0.058100; d_A = 233.5*(3.08568*10**24)#cm 
        EIerr = (Kerr * 4 * np.pi * ((d_A * (z+1))**2))/(10**(-14))
        V = 0.6215*0.6215*1000*(2.938*10**(64)) # kpc to cm^3 
        n_e_err = np.sqrt(1.18 * EIerr/(V*region_pixsum[ii]))
        boolmask.append(n_e_err*(imreg.astype(np.int)))
    
    denserrordepthmap = sum(boolmask)
    _mkmap(denserrordepthmap/2,"density_error_range_map.fits",hdr)
    #_printmap(normerrordepthmap,"norm_errordepthmap.pdf")
    
    boolmask = [];region_pixsum = []
    for ii in region:
        imreg = imdata == ii
        region_pixsum.append(np.count_nonzero(imreg.astype(np.int)))
        K = norm_error_low[ii]; z = 0.058100; d_A = 233.5*(3.08568*10**24)#cm 
        EI = (K * 4 * np.pi * ((d_A * (z+1))**2))/(10**(-14))
        V = 0.6215*0.6215*1000*(2.938*10**(64)) # kpc to cm^3 
        n_e = np.sqrt(1.18 * EI/(V*region_pixsum[ii]))
#        boolmask.append(((imreg.astype(np.int))*norm[ii]/region_pixsum[ii]))
#        boolmask.append(((621.5*621.5*1000*(3.086*10**(21))*1.18*(1.67*10**(-27))*(imreg.astype(np.int))*norm[ii]/region_pixsum[ii])))
        #621.5*621.5*1000: volume kpc to cm, 621.5*621.5*1000*(3.086*10**(21)): particle number density*mean molecular weight in proton mass units 
        boolmask.append(n_e*(imreg.astype(np.int)))
    
    denselowmap = sum(boolmask)
    _mkmap(denselowmap,"density_error_low_map.fits",hdr)

    boolmask = [];region_pixsum = []
    for ii in region:
        imreg = imdata == ii
        region_pixsum.append(np.count_nonzero(imreg.astype(np.int)))
        K = norm_error_high[ii]; z = 0.058100; d_A = 233.5*(3.08568*10**24)#cm 
        EI = (K * 4 * np.pi * ((d_A * (z+1))**2))/(10**(-14))
        V = 0.6215*0.6215*1000*(2.938*10**(64)) # kpc to cm^3 
        n_e = np.sqrt(1.18 * EI/(V*region_pixsum[ii]))
#        boolmask.append(((imreg.astype(np.int))*norm[ii]/region_pixsum[ii]))
#        boolmask.append(((621.5*621.5*1000*(3.086*10**(21))*1.18*(1.67*10**(-27))*(imreg.astype(np.int))*norm[ii]/region_pixsum[ii])))
        #621.5*621.5*1000: volume kpc to cm, 621.5*621.5*1000*(3.086*10**(21)): particle number density*mean molecular weight in proton mass units 
        boolmask.append(n_e*(imreg.astype(np.int)))
    
    densehighmap = sum(boolmask)
    _mkmap(densehighmap,"density_error_high_map.fits",hdr)

    
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
    _mkmap((temperrordepthmap/2),"temp_error_range_map.fits",hdr)
    #_printmap(temperrordepthmap,"temp_errordepthmap.pdf")
    
    boolmask = []
    for ii in region:
        imreg = imdata == ii
        boolmask.append((imreg.astype(np.int))*temp_error_low[ii])
    
    tempelowmap = sum(boolmask)
    #tempmap[tempmap >= 18] = np.nan
    _mkmap(tempelowmap,"temp_error_low_map.fits",hdr)
    
    boolmask = []
    for ii in region:
        imreg = imdata == ii
        boolmask.append((imreg.astype(np.int))*temp_error_high[ii])
    
    tempehighmap = sum(boolmask)
    #tempmap[tempmap >= 18] = np.nan
    _mkmap(tempehighmap,"temp_error_high_map.fits",hdr)
    
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
    _mkmap((abunderrordepthmap/2),"abund_error_range_map.fits",hdr)
    #_printmap(temperrordepthmap,"temp_errordepthmap.pdf")
    
    boolmask = []
    for ii in region:
        imreg = imdata == ii
        boolmask.append((imreg.astype(np.int))*abund_error_low[ii])
    
    abundelowmap = sum(boolmask)
    #tempmap[tempmap >= 18] = np.nan
    _mkmap(abundelowmap,"abund_error_low_map.fits",hdr)
    
    boolmask = []
    for ii in region:
        imreg = imdata == ii
        boolmask.append((imreg.astype(np.int))*abund_error_high[ii])
    
    abundehighmap = sum(boolmask)
    #tempmap[tempmap >= 18] = np.nan
    _mkmap(abundehighmap,"abund_error_high_map.fits",hdr)
    
    ##ENTROPY/PRESSURE MAPS
    entropymap = tempmap/(densmap**(2/3))
    pressuremap = densmap*tempmap
    entroerrordepthmap = np.abs(entropymap)*np.sqrt((((denserrordepthmap/2)/densmap)**2) + (((temperrordepthmap/2)/tempmap)**2) + ((2*(denserrordepthmap/2)*(temperrordepthmap/2))/(densmap*tempmap)))
    presserrordepthmap = pressuremap*np.sqrt((((temperrordepthmap/2)/tempmap)**2) + (((2/3)*(denserrordepthmap/2)/densmap)**2) - ((2*(denserrordepthmap/2)*(temperrordepthmap/2))/(densmap*tempmap)))
    sigmat = 6.65245*10**-25
    pseudocompy = (sigmat*pressuremap*(3.086*10**24))/511.0
    _mkmap(pseudocompy, "pseudocomptony_map.fits",hdr)

    _mkmap(entropymap,"entropy_map.fits",hdr)
    _mkmap(pressuremap,"pressure_map.fits",hdr)
    _mkmap(entroerrordepthmap,"entropy_error_range_map.fits",hdr)
    _mkmap(presserrordepthmap,"pressure_error_range_map.fits",hdr)
    
    _mkmap((presserrordepthmap/2)/pressuremap,"pressure_error_range_percent_map.fits",hdr)
    
    
    entropyelow = tempelowmap/(denselowmap**(2/3))
    entropyehigh = tempehighmap/(densehighmap**(2/3))
    pressureelow = denselowmap*tempelowmap
    pressureehigh = densehighmap*tempehighmap
    
    _mkmap(entropyelow,"entropy_error_low_map.fits",hdr)
    _mkmap(entropyehigh,"entropy_error_high_map.fits",hdr)
    _mkmap(pressureelow,"pressure_error_low_map.fits",hdr)
    _mkmap(pressureehigh,"pressure_error_high_map.fits",hdr)
    
    
#%%
    
def MixedMaps(tempmap,temperror,densmap,denserrordepthmap):
    ###--- BETTER MAPS --->>> 
    temp = fits.open(tempmap)
    temp_imdata = temp[0].data
    temperr = fits.open(temperror)
    temperr_hdr = temperr[0].header
    temperr_imdata = temperr[0].data
    dens = fits.open(densmap)
    dens_imdata = dens[0].data
    denserr = fits.open(denserrordepthmap)
    denserr_imdata = denserr[0].data
    
    betterentropy = temp_imdata/(dens_imdata**(2/3))
    betterpressure = dens_imdata*temp_imdata
    betterpresserrordepthmap = np.abs(betterpressure)*np.sqrt(((denserr_imdata/dens_imdata)**2) + ((temperr_imdata/temp_imdata)**2) + ((2*denserr_imdata*temperr_imdata)/(dens_imdata*temp_imdata)))
    betterentroerrordepthmap = betterentropy*np.sqrt(((temperr_imdata/temp_imdata)**2) + (((2/3)*denserr_imdata/dens_imdata)**2) - ((2*denserr_imdata*temperr_imdata)/(dens_imdata*temp_imdata)))
    
    _mkmap(betterentropy,"better_entropy_map.fits",temperr_hdr)
    _mkmap(1/betterentropy,"better_entropy_map_inverse.fits",temperr_hdr)
    _mkmap(betterpressure,"better_pressure_map.fits",temperr_hdr)
    _mkmap(betterentroerrordepthmap,"better_entropy_errordepthmap.fits",temperr_hdr)
    _mkmap(betterpresserrordepthmap,"better_pressure_errordepthmap.fits",temperr_hdr)   
    
    sigmat = 6.65245*10**-25
    pseudocompy = (sigmat*betterpressure*(3.086*10**24))/511.0
    _mkmap(pseudocompy, "pseudocomptony_map.fits",hdr)
    percentmask = (presserrordepthmap/2)/pressuremap
#%%
    
    
def ModelDividedMaps(data,model):
    dat = fits.open(data)
    head = dat[0].header
    data = dat[0].data
    modat = fits.open(model)
    modata = modat[0].data
    
    _mkmap(data*(data/modata),"resid_div_data.fits",head)
    

#%%

def ColdFrontPlot(inputdata):
    if XSPEC:
        data = pd.read_csv(inputdata, delimiter=' ', index_col=0)
#        mapdata = data[0:168]
        mapdata = data
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
    cftlow = [];cfthigh = [];cfalow = [];cfahigh = [];cfnlow = [];cfnhigh = []
    for index,row in cfdata.iterrows():
        cftemp.append(round(row['temperature'],4))
        cfabund.append(round(row['abundance'],4))
        cfnorm.append(round(row['norm'],4))
        cfchi2.append(round(row['chi2'],4))
        cftlow.append(round(row['temp_error_low'],4))
        cfthigh.append(round(row['temp_error_high'],4))
        cfalow.append(round(row['abund_error_low'],4))
        cfahigh.append(round(row['abund_error_high'],4))
        cfnlow.append(round(row['norm_error_low'],4))
        cfnhigh.append(round(row['norm_error_high'],4))
        
        
    #regions are all mixed up, had to fix manually
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

    longtlow = [cftlow[4],cftlow[3],cftlow[2],cftlow[1],cftlow[0],cftlow[5],cftlow[6],cftlow[7]]
    longalow = [cfalow[4],cfalow[3],cfalow[2],cfalow[1],cfalow[0],cfalow[5],cfalow[6],cfalow[7]]
    longnlow = [cfnlow[4],cfnlow[3],cfnlow[2],cfnlow[1],cfnlow[0],cfnlow[5],cfnlow[6],cfnlow[7]]
    shlefttlow = [cftlow[9],cftlow[11],cftlow[12],cftlow[13],cftlow[14],cftlow[15],cftlow[16],cftlow[17],cftlow[8],cftlow[25],cftlow[26]]
    shleftalow = [cfalow[9],cfalow[11],cfalow[12],cfalow[13],cfalow[14],cfalow[15],cfalow[16],cfalow[17],cfalow[8],cfalow[25],cfalow[26]]
    shleftnlow = [cfnlow[9],cfnlow[11],cfnlow[12],cfnlow[13],cfnlow[14],cfnlow[15],cfnlow[16],cfnlow[17],cfnlow[8],cfnlow[25],cfnlow[26]]
    shrighttlow = [cftlow[10],cftlow[18],cftlow[19],cftlow[20],cftlow[21],cftlow[22],cftlow[23],cftlow[24],cftlow[27],cftlow[28],cftlow[29]]
    shrightalow = [cfalow[10],cfalow[18],cfalow[19],cfalow[20],cfalow[21],cfalow[22],cfalow[23],cfalow[24],cfalow[27],cfalow[28],cfalow[29]]
    shrightnlow = [cfnlow[10],cfnlow[18],cfnlow[19],cfnlow[20],cfnlow[21],cfnlow[22],cfnlow[23],cfnlow[24],cfnlow[27],cfnlow[28],cfnlow[29]]

    longthigh = [cfthigh[4],cfthigh[3],cfthigh[2],cfthigh[1],cfthigh[0],cfthigh[5],cfthigh[6],cfthigh[7]]
    longahigh = [cfahigh[4],cfahigh[3],cfahigh[2],cfahigh[1],cfahigh[0],cfahigh[5],cfahigh[6],cfahigh[7]]
    longnhigh = [cfnhigh[4],cfnhigh[3],cfnhigh[2],cfnhigh[1],cfnhigh[0],cfnhigh[5],cfnhigh[6],cfnhigh[7]]
    shleftthigh = [cfthigh[9],cfthigh[11],cfthigh[12],cfthigh[13],cfthigh[14],cfthigh[15],cfthigh[16],cfthigh[17],cfthigh[8],cfthigh[25],cfthigh[26]]
    shleftahigh = [cfahigh[9],cfahigh[11],cfahigh[12],cfahigh[13],cfahigh[14],cfahigh[15],cfahigh[16],cfahigh[17],cfahigh[8],cfahigh[25],cfahigh[26]]
    shleftnhigh = [cfnhigh[9],cfnhigh[11],cfnhigh[12],cfnhigh[13],cfnhigh[14],cfnhigh[15],cfnhigh[16],cfnhigh[17],cfnhigh[8],cfnhigh[25],cfnhigh[26]]
    shrightthigh = [cfthigh[10],cfthigh[18],cfthigh[19],cfthigh[20],cfthigh[21],cfthigh[22],cfthigh[23],cfthigh[24],cfthigh[27],cfthigh[28],cfthigh[29]]
    shrightahigh = [cfahigh[10],cfahigh[18],cfahigh[19],cfahigh[20],cfahigh[21],cfahigh[22],cfahigh[23],cfahigh[24],cfahigh[27],cfahigh[28],cfahigh[29]]
    shrightnhigh = [cfnhigh[10],cfnhigh[18],cfnhigh[19],cfnhigh[20],cfnhigh[21],cfnhigh[22],cfnhigh[23],cfnhigh[24],cfnhigh[27],cfnhigh[28],cfnhigh[29]]

    longterr = [longtlow, longthigh];longaerr = [longalow, longahigh];longnerr = [longnlow, longnhigh]
    shleftterr = [shlefttlow, shleftthigh];shleftaerr = [shleftalow, shleftahigh];shleftnerr = [shleftnlow, shleftnhigh]
    shrightterr = [shrighttlow, shrightthigh];shrightaerr = [shrightalow, shrightahigh];shrightnerr = [shrightnlow, shrightnhigh]


    f, axarr = plt.subplots(2,2)
    f.suptitle('Cold Front Long Regions')
    axarr[0, 0].errorbar(list(range(len(longtemp))), longtemp, yerr=longterr, fmt='-o')
    axarr[0, 0].set_title('temperature')
    axarr[0, 1].errorbar(list(range(len(longtemp))), longabund, yerr=longaerr, fmt='-o')
    axarr[0, 1].set_title('abundance')
    axarr[1, 0].errorbar(list(range(len(longtemp))), longnorm, yerr=longnerr, fmt='-o')
    axarr[1, 0].set_title('norm')
    axarr[1, 1].scatter(list(range(len(longtemp))), longchi2)
    axarr[1, 1].set_title('$\chi^2$')
    f.savefig('longregions.png', bbox_inches='tight')
    
    f, axarr = plt.subplots(2,2)
    f.suptitle('Cold Front Short Left Regions')
    axarr[0, 0].errorbar(list(range(len(shlefttemp))), shlefttemp, yerr=shleftterr, fmt='-o')
    axarr[0, 0].set_title('temperature')
    axarr[0, 1].errorbar(list(range(len(shlefttemp))), shleftabund, yerr=shleftaerr, fmt='-o')
    axarr[0, 1].set_title('abundance')
    axarr[1, 0].errorbar(list(range(len(shlefttemp))), shleftnorm, yerr=shleftnerr, fmt='-o')
    axarr[1, 0].set_title('norm')
    axarr[1, 1].scatter(list(range(len(shlefttemp))), shleftchi2)
    axarr[1, 1].set_title('$\chi^2$')
    f.savefig('shortleftregions.png', bbox_inches='tight')
    
    f, axarr = plt.subplots(2,2)
    f.suptitle('Cold Front Short Right Regions')
    axarr[0, 0].errorbar(list(range(len(shrighttemp))), shrighttemp, yerr=shrightterr, fmt='-o')
    axarr[0, 0].set_title('temperature')
    axarr[0, 1].errorbar(list(range(len(shrighttemp))), shrightabund, yerr=shrightaerr, fmt='-o')
    axarr[0, 1].set_title('abundance')
    axarr[1, 0].errorbar(list(range(len(shrighttemp))), shrightnorm, yerr=shrightnerr, fmt='-o')
    axarr[1, 0].set_title('norm')
    axarr[1, 1].scatter(list(range(len(shrighttemp))), shrightchi2)
    axarr[1, 1].set_title('$\chi^2$')
    f.savefig('shortrightregions.png', bbox_inches='tight')
    
    subprocess.run('mkdir plots', shell=True)
    subprocess.run('mv longregions.png shortleftregions.png shortrightregions.png plots', shell=True)
    
    
#%%

def ShockFrontPlot(inputdata):
    if XSPEC:
        data = pd.read_csv(inputdata, delimiter=' ', index_col=0)
#        mapdata = data[0:168]
        mapdata = data
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
            
    terr = [temp_error_low, temp_error_high];aerr = [abund_error_low, abund_error_high];nerr = [norm_error_low, norm_error_high]
    
    f, axarr = plt.subplots(2,2)
    f.suptitle('Shock Front Regions')
    axarr[0, 0].errorbar(list(range(len(temp))), temp, yerr=terr, fmt='o-')
    axarr[0, 0].set_title('temperature')
    axarr[0, 1].errorbar(list(range(len(abund))), abund, yerr=aerr, fmt='o-')
    axarr[0, 1].set_title('abundance')
    axarr[1, 0].errorbar(list(range(len(norm))), norm, yerr=nerr, fmt='o-')
    axarr[1, 0].set_title('norm')
    axarr[1, 1].scatter(list(range(len(chi2))), chi2)
    axarr[1, 1].set_title('$\chi^2$')
    f.savefig('shockregions.png', bbox_inches='tight')
    
    subprocess.run('mkdir plots', shell=True)
    subprocess.run('mv shockregions.png plots', shell=True)
    
    
    
#%%

#    entropmap,'entropy'
def RadialAverage(centerx,centery,data,outputlabel):
#    outputlabel = 'entropy'
    tempdat = fits.open(data)
    temphead = tempdat[0].header
    #tempdata = np.flipud(tempdat[0].data)
    tempdata = tempdat[0].data
                
    y,x = np.shape(tempdata)
    #movex = centerx
    #movey = centery
    zeroarray = np.zeros([y, x]).astype(int)
    xpositions = np.zeros([y, x]).astype(int)
    ypositions = np.zeros([y, x]).astype(int)
    xarray = np.array(range(-movex,x-movex)).astype(int)
    yarray = np.array(range(-movey,y-movey)).astype(int)
    for ii in np.arange(y):
        xpositions[ii,:] = np.c_[xarray[None,:]]
    for ii in np.arange(x):
        ypositions[:,ii] = np.r_[yarray[None,:]]
    #ypositions = np.flipud(ypositions)
    grid = zeroarray
    for ii in np.arange(y):
        for jj in np.arange(x):
            grid[ii][jj] = int(np.sqrt(((np.abs(xpositions[ii][jj])**2) + ((np.abs(ypositions[ii][jj])**2)))))
    #        grid[ii][jj] = int(np.sqrt((int(newx[ii][jj])**2) + ((int(newy[ii][jj])**2))))
    _mkmap(grid,"radial_long.fits",temphead)
    
    
    radialtemp = np.zeros([y, x]).astype(int)
    for ii in list(range(np.amax(grid)+1)):
    #ii = 1048
        imreg = grid == ii
        imregfloat = imreg.astype(np.float)
        imreg = grid == ii
        imreg = imreg.astype(np.float)
        imreg[imreg == 0] = np.nan
        radialtemp = radialtemp + (imregfloat*np.nanmean(np.ma.masked_invalid(tempdata*imreg)))
        
        _mkmap(radialtemp,"radial_" + outputlabel + ".fits",temphead)
        
        _mkmap(tempdata/radialtemp,outputlabel + "_div_avg.fits",temphead)



#%%
def RadialCompass(centerx,centery,data,erbarup,erbardown,pixelsizekpc,outputlabel):
#centerx = 725;centery = 759

    tempdat = fits.open(data) #tempmap
    temphead = tempdat[0].header
    #tempdata = np.flipud(tempdat[0].data)
    tempdata = tempdat[0].data
    
    tempelowdat = fits.open(erbardown)
    tempelowdata = tempelowdat[0].data
    
    tempehighdat = fits.open(erbarup)
    tempehighdata = tempehighdat[0].data
    
    y,x = np.shape(tempdata)
    
    testgrid = np.reshape(range(x*y),(x,y))
    magicnum = testgrid[centerx,centery]
    lrtest = np.fliplr(testgrid)
    flx,fly = np.where(lrtest==magicnum)
    
    #movex = int(flx)
    #movey = int(fly)
    movex = centerx
    movey = centery
    
    xpositions = np.zeros([y, x]).astype(int)
    ypositions = np.zeros([y, x]).astype(int)
    xarray = np.array(range(-movex,x-movex)).astype(int)
    yarray = np.array(range(-movey,y-movey)).astype(int)
    for ii in np.arange(y):
        xpositions[ii,:] = np.c_[xarray[None,:]]
    for ii in np.arange(x):
        ypositions[:,ii] = np.r_[yarray[None,:]]
    #ypositions = np.flip(ypositions)
    
    
    
    #NORTH 
    northgrid = np.zeros([y, x]).astype(int)
    for ii in list(range(0,np.abs(np.amin(ypositions))+1)):
        northgrid[ii,movex] = 1
    #SOUTH 
    southgrid = np.zeros([y, x]).astype(int)
    for ii in list(range(np.abs(np.amin(ypositions)),y)):
        southgrid[ii,movex] = 1
    #EAST (IMG LEFT)
    eastgrid = np.zeros([y, x]).astype(int)
    for ii in list(range(0,np.abs(np.amin(xpositions))+1)):
        eastgrid[movey,ii] = 1
    #WEST (IMG RIGHT)
    westgrid = np.zeros([y, x]).astype(int)
    for ii in list(range(np.abs(np.amin(xpositions)),x)):
        westgrid[movey,ii] = 1
    
    #NORTHEAST (IMG TOP LEFT)
    negrid = np.zeros([y, x]).astype(int)
    nequad = np.zeros([y, x]).astype(int)
    
    nediag = np.eye(y,M=x,k=movex-movey)
    
    for ii in list(range(np.amin(ypositions),1)):
        for jj in list(range(np.amin(xpositions),1)):
            nequad[movey+ii,movex+jj] = 1
    
    negrid = np.multiply(nequad,nediag)
    
    #SOUTHWEST (IMG BOTTOM RIGHT)
    swgrid = np.zeros([y, x]).astype(int)
    swquad = np.zeros([y, x]).astype(int)
    
    #swdiag = np.eye(y,M=x,k=movex-movey)
    
    for ii in list(range(0,np.amax(ypositions)+1)):
        for jj in list(range(0,np.amax(xpositions)+1)):
            swquad[movey+ii,movex+jj] = 1
    
    swgrid = np.multiply(swquad,nediag)
    
    #NORTHWEST (IMG TOP RIGHT)
    #testgrid = np.reshape(range(x*y),(x,y))
    #magicnum = testgrid[movex,movey]
    #lrtest = np.fliplr(testgrid)
    #flx,fly = np.where(lrtest==magicnum)
    
    nwgrid = np.zeros([y, x]).astype(int)
    nwquad = np.zeros([y, x]).astype(int)
    
    nwdiag = np.eye(y,M=x,k=int(flx)-int(fly))[::-1]
    
    for ii in list(range(np.amin(ypositions),1)):
        for jj in list(range(np.amin(xpositions),1)):
            nwquad[movey+ii,movex-jj] = 1
    
    nwgrid = np.multiply(nwquad,nwdiag)
    
    #SOUTHEAST (IMG BOTTOM LEFT)
    segrid = np.zeros([y, x]).astype(int)
    sequad = np.zeros([y, x]).astype(int)
    
    for ii in list(range(0,np.amax(ypositions)+1)):
        for jj in list(range(np.amin(xpositions),1)):
            sequad[movey+ii,movex+jj] = 1
    
    segrid = np.multiply(sequad,nwdiag)
    
    fullcompass = northgrid+southgrid+westgrid+eastgrid+negrid+nwgrid+segrid+swgrid
    compassimage = tempdata*np.invert(fullcompass.astype(np.bool)).astype(np.int)
    _mkmap(compassimage,"compass_" + outputlabel + "_image.fits",temphead)
    
    
    northelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,northgrid))]
    northehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,northgrid))]
    northyerr = [northelow, northehigh]
    southelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,southgrid))]
    southehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,southgrid))]
    southyerr = [southelow, southehigh]
    eastelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,eastgrid))]
    eastehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,eastgrid))]
    eastyerr = [eastelow, eastehigh]
    westelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,westgrid))]
    westehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,westgrid))]
    westyerr = [westelow, westehigh]
    neelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,negrid))]
    neehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,negrid))]
    neyerr = [neelow, neehigh]
    nwelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,nwgrid))]
    nwehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,nwgrid))]
    nwyerr = [nwelow, nwehigh]
    seelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,segrid))]
    seehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,segrid))]
    seyerr = [seelow, seehigh]
    swelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,swgrid))]
    swehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,swgrid))]
    swyerr = [swelow, swehigh]
    
    #for item in list(range(len(northunique))):
    #    counter=1
    #    for element in list(range(len(northarray))):
    #        if northarray[element] == northunique[item]:
    #            counter = counter+1
    #northuniquedist = [ii/0.6215 for ii in northuniqueindex]
    #northxbar = [ii/2 for ii in northuniquedist]
    
    northarray = tempdata[np.nonzero(np.multiply(tempdata,northgrid))]
    #northunique,northuniqueindex = np.unique(northarray[::-1],return_index=True)
    northarray = northarray[::-1]
    #southarray = list(dict.fromkeys(tempdata[np.nonzero(np.multiply(tempdata,southgrid))]))
    southarray = tempdata[np.nonzero(np.multiply(tempdata,southgrid))]
    eastarray = tempdata[np.nonzero(np.multiply(tempdata,eastgrid))]
    #eastarray = list(dict.fromkeys(eastarray[::-1]))
    eastarray = eastarray[::-1]
    #westarray = list(dict.fromkeys(tempdata[np.nonzero(np.multiply(tempdata,westgrid))]))
    westarray = tempdata[np.nonzero(np.multiply(tempdata,westgrid))]
    nearray = tempdata[np.nonzero(np.multiply(tempdata,negrid))]
    #nearray = list(dict.fromkeys(nearray[::-1]))
    nearray = nearray[::-1]
    nwarray = tempdata[np.nonzero(np.multiply(tempdata,nwgrid))]
    #nwarray = list(dict.fromkeys(nwarray[::-1]))
    nwarray = nwarray[::-1]
    #searray = list(dict.fromkeys(tempdata[np.nonzero(np.multiply(tempdata,segrid))]))
    searray = tempdata[np.nonzero(np.multiply(tempdata,segrid))]
    #swarray = list(dict.fromkeys(tempdata[np.nonzero(np.multiply(tempdata,swgrid))]))
    swarray = tempdata[np.nonzero(np.multiply(tempdata,swgrid))]
    
    northdistance = [ii / pixelsizekpc for ii in list(range(len(northarray)))]#0.6215
    southdistance = [ii / pixelsizekpc for ii in list(range(len(southarray)))]
    eastdistance = [ii / pixelsizekpc for ii in list(range(len(eastarray)))]
    westdistance = [ii / pixelsizekpc for ii in list(range(len(westarray)))]
    nedistance = [ii / pixelsizekpc for ii in list(range(len(nearray)))]
    nwdistance = [ii / pixelsizekpc for ii in list(range(len(nwarray)))]
    sedistance = [ii / pixelsizekpc for ii in list(range(len(searray)))]
    swdistance = [ii / pixelsizekpc for ii in list(range(len(swarray)))]
    
    f, axarr = plt.subplots(2,2)
    f.suptitle('NSEW Regions - ' + outputlabel + ' vs distance in kpc')
    axarr[0, 0].errorbar(northdistance, northarray, yerr=northyerr, fmt='o-')#list(range(len(northarray)))
    axarr[0, 0].set_title('North')
    axarr[0, 1].errorbar(southdistance, southarray, yerr=southyerr, fmt='o-')
    axarr[0, 1].set_title('South')
    axarr[1, 0].errorbar(eastdistance, eastarray, yerr=eastyerr, fmt='o-')
    axarr[1, 0].set_title('East')
    axarr[1, 1].errorbar(westdistance, westarray, yerr=westyerr, fmt='o-')
    axarr[1, 1].set_title('West')
    f.savefig('NSEW_' + outputlabel + '.png', bbox_inches='tight')
    
    f, axarr = plt.subplots(2,2)
    f.suptitle('NSEW Cross Regions - ' + outputlabel + ' vs distance in kpc')
    axarr[0, 0].errorbar(nedistance, nearray, yerr=neyerr, fmt='o-')
    axarr[0, 0].set_title('North East')
    axarr[0, 1].errorbar(nwdistance, nwarray, yerr=nwyerr, fmt='o-')
    axarr[0, 1].set_title('North West')
    axarr[1, 0].errorbar(sedistance, searray, yerr=seyerr, fmt='o-')
    axarr[1, 0].set_title('South East')
    axarr[1, 1].errorbar(swdistance, swarray, yerr=swyerr, fmt='o-')
    axarr[1, 1].set_title('South West')
    f.savefig('NSEW_cross_' + outputlabel + '.png', bbox_inches='tight')
        
    #_mkmap(betterpressure*(tempdata/radialtemp),"temp_div_pressure.fits",temphead)
    subprocess.run('mkdir plots', shell=True)
    subprocess.run('mv compass_' + outputlabel + '_image.fits NSEW_' + outputlabel + '.png NSEW_cross_' + outputlabel + '.png plots', shell=True)


#%%
#def idx_front(ln):
#    try:
#        return list(ln).index(1)
#    except ValueError:
#        return len(ln) # an index beyond line end
#
#def idx_back(ln):
#    try:
#        return len(ln) - list(reversed(ln)).index(1) - 1
#    except ValueError:
#        return len(ln) # an index beyond line end

def RadialCone(centerx,centery,data,erbarup,erbardown,pixelsizekpc,outputlabel):
#centerx = 725;centery = 759

    tempdat = fits.open(data) #tempmap
    temphead = tempdat[0].header
    #tempdata = np.flipud(tempdat[0].data)
    tempdata = tempdat[0].data
    
    tempelowdat = fits.open(erbardown)
    tempelowdata = tempelowdat[0].data
    
    tempehighdat = fits.open(erbarup)
    tempehighdata = tempehighdat[0].data
    
    y,x = np.shape(tempdata)
    
    testgrid = np.reshape(range(x*y),(x,y))
    magicnum = testgrid[centerx,centery]
    lrtest = np.fliplr(testgrid)
    flx,fly = np.where(lrtest==magicnum)
    
    #movex = int(flx)
    #movey = int(fly)
    movex = centerx
    movey = centery
    
    xpositions = np.zeros([y, x]).astype(int)
    ypositions = np.zeros([y, x]).astype(int)
    xarray = np.array(range(-movex,x-movex)).astype(int)
    yarray = np.array(range(-movey,y-movey)).astype(int)
    for ii in np.arange(y):
        xpositions[ii,:] = np.c_[xarray[None,:]]
    for ii in np.arange(x):
        ypositions[:,ii] = np.r_[yarray[None,:]]
    #ypositions = np.flip(ypositions)
    
    
    
    #NORTH 
    northgrid = np.zeros([y, x]).astype(int)
    for ii in list(range(0,np.abs(np.amin(ypositions))+1)):
        northgrid[ii,movex] = 1
    #SOUTH 
    southgrid = np.zeros([y, x]).astype(int)
    for ii in list(range(np.abs(np.amin(ypositions)),y)):
        southgrid[ii,movex] = 1
    #EAST (IMG LEFT)
    eastgrid = np.zeros([y, x]).astype(int)
    for ii in list(range(0,np.abs(np.amin(xpositions))+1)):
        eastgrid[movey,ii] = 1
    #WEST (IMG RIGHT)
    westgrid = np.zeros([y, x]).astype(int)
    for ii in list(range(np.abs(np.amin(xpositions)),x)):
        westgrid[movey,ii] = 1
    
    #NORTHEAST (IMG TOP LEFT)
    negrid = np.zeros([y, x]).astype(int)
    nequad = np.zeros([y, x]).astype(int)
    
    nediag = np.eye(y,M=x,k=movex-movey)
    
    for ii in list(range(np.amin(ypositions),1)):
        for jj in list(range(np.amin(xpositions),1)):
            nequad[movey+ii,movex+jj] = 1
    
    negrid = np.multiply(nequad,nediag)
    
    #SOUTHWEST (IMG BOTTOM RIGHT)
    swgrid = np.zeros([y, x]).astype(int)
    swquad = np.zeros([y, x]).astype(int)
    
    #swdiag = np.eye(y,M=x,k=movex-movey)
    
    for ii in list(range(0,np.amax(ypositions)+1)):
        for jj in list(range(0,np.amax(xpositions)+1)):
            swquad[movey+ii,movex+jj] = 1
    
    swgrid = np.multiply(swquad,nediag)
    
    #NORTHWEST (IMG TOP RIGHT)
    #testgrid = np.reshape(range(x*y),(x,y))
    #magicnum = testgrid[movex,movey]
    #lrtest = np.fliplr(testgrid)
    #flx,fly = np.where(lrtest==magicnum)
    
    nwgrid = np.zeros([y, x]).astype(int)
    nwquad = np.zeros([y, x]).astype(int)
    
    nwdiag = np.eye(y,M=x,k=int(flx)-int(fly))[::-1]
    
    for ii in list(range(np.amin(ypositions),1)):
        for jj in list(range(np.amin(xpositions),1)):
            nwquad[movey+ii,movex-jj] = 1
    
    nwgrid = np.multiply(nwquad,nwdiag)
    
    #SOUTHEAST (IMG BOTTOM LEFT)
    segrid = np.zeros([y, x]).astype(int)
    sequad = np.zeros([y, x]).astype(int)
    
    for ii in list(range(0,np.amax(ypositions)+1)):
        for jj in list(range(np.amin(xpositions),1)):
            sequad[movey+ii,movex+jj] = 1
    
    segrid = np.multiply(sequad,nwdiag)
    
    
    necone = negrid+northgrid
    nwcone = nwgrid+northgrid

#    ranges = [ (idx_front(ln), idx_back(ln)) for ln in necone ]
#    for ln, (lo,hi) in zip(necone, ranges):
#        ln[lo:hi] = 1  # attention: destructive update in-place
    structure = np.zeros((3,3), dtype=np.int)
    structure[1,:] = 1

    filledne = ndimage.morphology.binary_fill_holes(necone, structure)
    fillednw = ndimage.morphology.binary_fill_holes(nwcone, structure)
    
#    fullcompass = northgrid+southgrid+westgrid+eastgrid+negrid+nwgrid+segrid+swgrid
#    compassimage = tempdata*np.invert(fullcompass.astype(np.bool)).astype(np.int)
#    _mkmap(compassimage,"compass_" + outputlabel + "_image.fits",temphead)
    _mkmap(filledne.astype(np.int),"necone_" + outputlabel + ".fits",temphead)
    _mkmap(fillednw.astype(np.int),"nwcone_" + outputlabel + ".fits",temphead)
    
    
#    northelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,northgrid))]
#    northehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,northgrid))]
#    northyerr = [northelow, northehigh]
#    southelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,southgrid))]
#    southehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,southgrid))]
#    southyerr = [southelow, southehigh]
#    eastelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,eastgrid))]
#    eastehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,eastgrid))]
#    eastyerr = [eastelow, eastehigh]
#    westelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,westgrid))]
#    westehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,westgrid))]
#    westyerr = [westelow, westehigh]
#    neelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,negrid))]
#    neehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,negrid))]
#    neyerr = [neelow, neehigh]
#    nwelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,nwgrid))]
#    nwehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,nwgrid))]
#    nwyerr = [nwelow, nwehigh]
#    seelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,segrid))]
#    seehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,segrid))]
#    seyerr = [seelow, seehigh]
#    swelow = tempelowdata[np.nonzero(np.multiply(tempelowdata,swgrid))]
#    swehigh = tempehighdata[np.nonzero(np.multiply(tempehighdata,swgrid))]
#    swyerr = [swelow, swehigh]
#    
#    #for item in list(range(len(northunique))):
#    #    counter=1
#    #    for element in list(range(len(northarray))):
#    #        if northarray[element] == northunique[item]:
#    #            counter = counter+1
#    #northuniquedist = [ii/0.6215 for ii in northuniqueindex]
#    #northxbar = [ii/2 for ii in northuniquedist]
#    
#    northarray = tempdata[np.nonzero(np.multiply(tempdata,northgrid))]
#    #northunique,northuniqueindex = np.unique(northarray[::-1],return_index=True)
#    northarray = northarray[::-1]
#    #southarray = list(dict.fromkeys(tempdata[np.nonzero(np.multiply(tempdata,southgrid))]))
#    southarray = tempdata[np.nonzero(np.multiply(tempdata,southgrid))]
#    eastarray = tempdata[np.nonzero(np.multiply(tempdata,eastgrid))]
#    #eastarray = list(dict.fromkeys(eastarray[::-1]))
#    eastarray = eastarray[::-1]
#    #westarray = list(dict.fromkeys(tempdata[np.nonzero(np.multiply(tempdata,westgrid))]))
#    westarray = tempdata[np.nonzero(np.multiply(tempdata,westgrid))]
#    nearray = tempdata[np.nonzero(np.multiply(tempdata,negrid))]
#    #nearray = list(dict.fromkeys(nearray[::-1]))
#    nearray = nearray[::-1]
#    nwarray = tempdata[np.nonzero(np.multiply(tempdata,nwgrid))]
#    #nwarray = list(dict.fromkeys(nwarray[::-1]))
#    nwarray = nwarray[::-1]
#    #searray = list(dict.fromkeys(tempdata[np.nonzero(np.multiply(tempdata,segrid))]))
#    searray = tempdata[np.nonzero(np.multiply(tempdata,segrid))]
#    #swarray = list(dict.fromkeys(tempdata[np.nonzero(np.multiply(tempdata,swgrid))]))
#    swarray = tempdata[np.nonzero(np.multiply(tempdata,swgrid))]
#    
#    northdistance = [ii / pixelsizekpc for ii in list(range(len(northarray)))]#0.6215
#    southdistance = [ii / pixelsizekpc for ii in list(range(len(southarray)))]
#    eastdistance = [ii / pixelsizekpc for ii in list(range(len(eastarray)))]
#    westdistance = [ii / pixelsizekpc for ii in list(range(len(westarray)))]
#    nedistance = [ii / pixelsizekpc for ii in list(range(len(nearray)))]
#    nwdistance = [ii / pixelsizekpc for ii in list(range(len(nwarray)))]
#    sedistance = [ii / pixelsizekpc for ii in list(range(len(searray)))]
#    swdistance = [ii / pixelsizekpc for ii in list(range(len(swarray)))]
#    
#    f, axarr = plt.subplots(2,2)
#    f.suptitle('NSEW Regions - ' + outputlabel + ' vs distance in kpc')
#    axarr[0, 0].errorbar(northdistance, northarray, yerr=northyerr, fmt='o-')#list(range(len(northarray)))
#    axarr[0, 0].set_title('North')
#    axarr[0, 1].errorbar(southdistance, southarray, yerr=southyerr, fmt='o-')
#    axarr[0, 1].set_title('South')
#    axarr[1, 0].errorbar(eastdistance, eastarray, yerr=eastyerr, fmt='o-')
#    axarr[1, 0].set_title('East')
#    axarr[1, 1].errorbar(westdistance, westarray, yerr=westyerr, fmt='o-')
#    axarr[1, 1].set_title('West')
#    f.savefig('NSEW_' + outputlabel + '.png', bbox_inches='tight')
#    
#    f, axarr = plt.subplots(2,2)
#    f.suptitle('NSEW Cross Regions - ' + outputlabel + ' vs distance in kpc')
#    axarr[0, 0].errorbar(nedistance, nearray, yerr=neyerr, fmt='o-')
#    axarr[0, 0].set_title('North East')
#    axarr[0, 1].errorbar(nwdistance, nwarray, yerr=nwyerr, fmt='o-')
#    axarr[0, 1].set_title('North West')
#    axarr[1, 0].errorbar(sedistance, searray, yerr=seyerr, fmt='o-')
#    axarr[1, 0].set_title('South East')
#    axarr[1, 1].errorbar(swdistance, swarray, yerr=swyerr, fmt='o-')
#    axarr[1, 1].set_title('South West')
#    f.savefig('NSEW_cross_' + outputlabel + '.png', bbox_inches='tight')
#        
#    #_mkmap(betterpressure*(tempdata/radialtemp),"temp_div_pressure.fits",temphead)
#    subprocess.run('mkdir plots', shell=True)
#    subprocess.run('mv compass_' + outputlabel + '_image.fits NSEW_' + outputlabel + '.png NSEW_cross_' + outputlabel + '.png plots', shell=True)











#%%
if __name__ == '__main__':
    main()

