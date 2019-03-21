echo 'Download and Reprocess Data'
cd /home/jpbreuer/Chandra_data/a2256
download_chandra_obsid 965,1386,1521,2419,16129,16514,16515,16516
rm -rf 1386/repro
punlearn ardlib
chandra_repro 1386 outdir= verbose=1 clobber=yes
rm -rf 1521/repro
punlearn ardlib
chandra_repro 1521 outdir= verbose=1 clobber=yes
rm -rf 2419/repro
punlearn ardlib
chandra_repro 2419 outdir= verbose=1 clobber=yes
rm -rf 16129/repro
punlearn ardlib
chandra_repro 16129 outdir= check_vf_pha=yes verbose=1 clobber=yes
rm -rf 16514/repro
punlearn ardlib
chandra_repro 16514 outdir= check_vf_pha=yes verbose=1 clobber=yes
rm -rf 16515/repro
punlearn ardlib
chandra_repro 16515 outdir= check_vf_pha=yes verbose=1 clobber=yes
rm -rf 16516/repro
punlearn ardlib
chandra_repro 16516 outdir= check_vf_pha=yes verbose=1 clobber=yes
echo 'Download and Reprocess Data... Done!'

echo 'Extract Light Curves for Deflaring'
cd /home/jpbreuer/Chandra_data/a2256
cd /home/jpbreuer/Chandra_data/a2256/1386
punlearn ardlib
acis_set_ardlib /home/jpbreuer/Chandra_data/a2256/1386/repro/acisf01386_repro_bpix1.fits

punlearn fluximage
fluximage repro/ repro/1386 binsize=1 bands=0.5:7:2.3 clobber=yes
cd repro
punlearn mkpsfmap
mkpsfmap 1386_0.5-7_thresh.img outfile=1386_0.5-7.psf energy=2.3 ecf=0.9 clobber=yes
punlearn wavdetect
wavdetect infile=1386_0.5-7_thresh.img psffile=1386_0.5-7.psf expfile=1386_0.5-7_thresh.expmap outfile=src_0.5-7.fits scellfile=scell_0.5-7.fits imagefile=imgfile_0.5-7.fits defnbkgfile=nbkg_0.5-7.fits regfile=1386_src_0.5-7.reg scales="1 2 4 8 16 32" maxiter=3 sigthresh=5e-6 ellsigma=5.0 clobber=yes

echo 'Made regions... Done!'
echo 'CHECK REGLIST AND REMOVE ALL POINT SOURCES AS WELL AS CLUSTER EMISSION'

echo 'Make GTI for deflaring observations'

punlearn dmcopy
dmcopy "acisf01386_repro_evt2.fits[exclude sky=region(1386_src_0.5-7-noem.reg)]" 1386_nosources.evt option=all clobber=yes
punlearn dmcopy
dmcopy "1386_nosources.evt[energy=500:7000]" 1386_0.5-7_nosources.evt option=all clobber=yes
punlearn dmextract
dmextract "1386_0.5-7_nosources.evt[bin time=::259.28]" 1386_0.5-7.lc opt=ltc1 clobber=yes
punlearn deflare
deflare 1386_0.5-7.lc 1386_0.5-7.gti method=clean
punlearn dmcopy
dmcopy "acisf01386_repro_evt2.fits[@1386_0.5-7.gti]" acisf01386_clean_evt.fits opt=all clobber=yes

echo 'Make background with GTI'

punlearn blanksky
blanksky evtfile="acisf01386_repro_evt2.fits[@1386_0.5-7.gti]" outfile=1386_background_clean.evt tmpdir=./ clobber=yes
dmhedit infile="1386_background_clean.evt" filelist=none key="OBS_ID" value="1386" operation="add"
blanksky_image bkgfile=1386_background_clean.evt outroot=1386_blank imgfile=1386_0.5-7_thresh.img tmpdir=./ clobber=yes

cd /home/jpbreuer/Chandra_data/a2256/1521
punlearn ardlib
acis_set_ardlib /home/jpbreuer/Chandra_data/a2256/1521/repro/acisf01521_repro_bpix1.fits

punlearn fluximage
fluximage repro/ repro/1521 binsize=1 bands=0.5:7:2.3 clobber=yes
cd repro
punlearn mkpsfmap
mkpsfmap 1521_0.5-7_thresh.img outfile=1521_0.5-7.psf energy=2.3 ecf=0.9 clobber=yes
punlearn wavdetect
wavdetect infile=1521_0.5-7_thresh.img psffile=1521_0.5-7.psf expfile=1521_0.5-7_thresh.expmap outfile=src_0.5-7.fits scellfile=scell_0.5-7.fits imagefile=imgfile_0.5-7.fits defnbkgfile=nbkg_0.5-7.fits regfile=1521_src_0.5-7.reg scales="1 2 4 8 16 32" maxiter=3 sigthresh=5e-6 ellsigma=5.0 clobber=yes

echo 'Made regions... Done!'
echo 'CHECK REGLIST AND REMOVE ALL POINT SOURCES AS WELL AS CLUSTER EMISSION'

echo 'Make GTI for deflaring observations'

punlearn dmcopy
dmcopy "acisf01521_repro_evt2.fits[exclude sky=region(1521_src_0.5-7-noem.reg)]" 1521_nosources.evt option=all clobber=yes
punlearn dmcopy
dmcopy "1521_nosources.evt[energy=500:7000]" 1521_0.5-7_nosources.evt option=all clobber=yes
punlearn dmextract
dmextract "1521_0.5-7_nosources.evt[bin time=::259.28]" 1521_0.5-7.lc opt=ltc1 clobber=yes
punlearn deflare
deflare 1521_0.5-7.lc 1521_0.5-7.gti method=clean
punlearn dmcopy
dmcopy "acisf01521_repro_evt2.fits[@1521_0.5-7.gti]" acisf01521_clean_evt.fits opt=all clobber=yes

echo 'Make background with GTI'

punlearn blanksky
blanksky evtfile="acisf01521_repro_evt2.fits[@1521_0.5-7.gti]" outfile=1521_background_clean.evt tmpdir=./ clobber=yes
dmhedit infile="1521_background_clean.evt" filelist=none key="OBS_ID" value="1521" operation="add"
blanksky_image bkgfile=1521_background_clean.evt outroot=1521_blank imgfile=1521_0.5-7_thresh.img tmpdir=./ clobber=yes

cd /home/jpbreuer/Chandra_data/a2256/2419
punlearn ardlib
acis_set_ardlib /home/jpbreuer/Chandra_data/a2256/2419/repro/acisf02419_repro_bpix1.fits

punlearn fluximage
fluximage repro/ repro/2419 binsize=1 bands=0.5:7:2.3 clobber=yes
cd repro
punlearn mkpsfmap
mkpsfmap 2419_0.5-7_thresh.img outfile=2419_0.5-7.psf energy=2.3 ecf=0.9 clobber=yes
punlearn wavdetect
wavdetect infile=2419_0.5-7_thresh.img psffile=2419_0.5-7.psf expfile=2419_0.5-7_thresh.expmap outfile=src_0.5-7.fits scellfile=scell_0.5-7.fits imagefile=imgfile_0.5-7.fits defnbkgfile=nbkg_0.5-7.fits regfile=2419_src_0.5-7.reg scales="1 2 4 8 16 32" maxiter=3 sigthresh=5e-6 ellsigma=5.0 clobber=yes

echo 'Made regions... Done!'
echo 'CHECK REGLIST AND REMOVE ALL POINT SOURCES AS WELL AS CLUSTER EMISSION'

echo 'Make GTI for deflaring observations'

punlearn dmcopy
dmcopy "acisf02419_repro_evt2.fits[exclude sky=region(2419_src_0.5-7-noem.reg)]" 2419_nosources.evt option=all clobber=yes
punlearn dmcopy
dmcopy "2419_nosources.evt[energy=500:7000]" 2419_0.5-7_nosources.evt option=all clobber=yes
punlearn dmextract
dmextract "2419_0.5-7_nosources.evt[bin time=::259.28]" 2419_0.5-7.lc opt=ltc1 clobber=yes
punlearn deflare
deflare 2419_0.5-7.lc 2419_0.5-7.gti method=clean
punlearn dmcopy
dmcopy "acisf02419_repro_evt2.fits[@2419_0.5-7.gti]" acisf02419_clean_evt.fits opt=all clobber=yes

echo 'Make background with GTI'

punlearn blanksky
blanksky evtfile="acisf02419_repro_evt2.fits[@2419_0.5-7.gti]" outfile=2419_background_clean.evt tmpdir=./ clobber=yes
dmhedit infile="2419_background_clean.evt" filelist=none key="OBS_ID" value="2419" operation="add"
blanksky_image bkgfile=2419_background_clean.evt outroot=2419_blank imgfile=2419_0.5-7_thresh.img tmpdir=./ clobber=yes

cd /home/jpbreuer/Chandra_data/a2256/16129
punlearn ardlib
acis_set_ardlib /home/jpbreuer/Chandra_data/a2256/16129/repro/acisf16129_repro_bpix1.fits

punlearn fluximage
fluximage repro/ repro/16129 binsize=1 bands=0.5:7:2.3 clobber=yes
cd repro
punlearn mkpsfmap
mkpsfmap 16129_0.5-7_thresh.img outfile=16129_0.5-7.psf energy=2.3 ecf=0.9 clobber=yes
punlearn wavdetect
wavdetect infile=16129_0.5-7_thresh.img psffile=16129_0.5-7.psf expfile=16129_0.5-7_thresh.expmap outfile=src_0.5-7.fits scellfile=scell_0.5-7.fits imagefile=imgfile_0.5-7.fits defnbkgfile=nbkg_0.5-7.fits regfile=16129_src_0.5-7.reg scales="1 2 4 8 16 32" maxiter=3 sigthresh=5e-6 ellsigma=5.0 clobber=yes

echo 'Made regions... Done!'
echo 'CHECK REGLIST AND REMOVE ALL POINT SOURCES AS WELL AS CLUSTER EMISSION'

echo 'Make GTI for deflaring observations'

punlearn dmcopy
dmcopy "acisf16129_repro_evt2.fits[exclude sky=region(16129_src_0.5-7-noem.reg)]" 16129_nosources.evt option=all clobber=yes
punlearn dmcopy
dmcopy "16129_nosources.evt[energy=500:7000]" 16129_0.5-7_nosources.evt option=all clobber=yes
punlearn dmextract
dmextract "16129_0.5-7_nosources.evt[bin time=::259.28]" 16129_0.5-7.lc opt=ltc1 clobber=yes
punlearn deflare
deflare 16129_0.5-7.lc 16129_0.5-7.gti method=clean
punlearn dmcopy
dmcopy "acisf16129_repro_evt2.fits[@16129_0.5-7.gti]" acisf16129_clean_evt.fits opt=all clobber=yes

echo 'Make background with GTI'

punlearn blanksky
blanksky evtfile="acisf16129_repro_evt2.fits[@16129_0.5-7.gti]" outfile=16129_vfbackground_clean.evt tmpdir=./ clobber=yes
punlearn dmcopy
dmcopy "16129_vfbackground_clean.evt[status=0]" 16129_background_clean.evt clobber=yes

dmhedit infile="16129_background_clean.evt" filelist=none key="OBS_ID" value="16129" operation="add"
blanksky_image bkgfile=16129_background_clean.evt outroot=16129_blank imgfile=16129_0.5-7_thresh.img tmpdir=./ clobber=yes

cd /home/jpbreuer/Chandra_data/a2256/16514
punlearn ardlib
acis_set_ardlib /home/jpbreuer/Chandra_data/a2256/16514/repro/acisf16514_repro_bpix1.fits

punlearn fluximage
fluximage repro/ repro/16514 binsize=1 bands=0.5:7:2.3 clobber=yes
cd repro
punlearn mkpsfmap
mkpsfmap 16514_0.5-7_thresh.img outfile=16514_0.5-7.psf energy=2.3 ecf=0.9 clobber=yes
punlearn wavdetect
wavdetect infile=16514_0.5-7_thresh.img psffile=16514_0.5-7.psf expfile=16514_0.5-7_thresh.expmap outfile=src_0.5-7.fits scellfile=scell_0.5-7.fits imagefile=imgfile_0.5-7.fits defnbkgfile=nbkg_0.5-7.fits regfile=16514_src_0.5-7.reg scales="1 2 4 8 16 32" maxiter=3 sigthresh=5e-6 ellsigma=5.0 clobber=yes

echo 'Made regions... Done!'
echo 'CHECK REGLIST AND REMOVE ALL POINT SOURCES AS WELL AS CLUSTER EMISSION'

echo 'Make GTI for deflaring observations'

punlearn dmcopy
dmcopy "acisf16514_repro_evt2.fits[exclude sky=region(16514_src_0.5-7-noem.reg)]" 16514_nosources.evt option=all clobber=yes
punlearn dmcopy
dmcopy "16514_nosources.evt[energy=500:7000]" 16514_0.5-7_nosources.evt option=all clobber=yes
punlearn dmextract
dmextract "16514_0.5-7_nosources.evt[bin time=::259.28]" 16514_0.5-7.lc opt=ltc1 clobber=yes
punlearn deflare
deflare 16514_0.5-7.lc 16514_0.5-7.gti method=clean
punlearn dmcopy
dmcopy "acisf16514_repro_evt2.fits[@16514_0.5-7.gti]" acisf16514_clean_evt.fits opt=all clobber=yes

echo 'Make background with GTI'

punlearn blanksky
blanksky evtfile="acisf16514_repro_evt2.fits[@16514_0.5-7.gti]" outfile=16514_vfbackground_clean.evt tmpdir=./ clobber=yes
punlearn dmcopy
dmcopy "16514_vfbackground_clean.evt[status=0]" 16514_background_clean.evt clobber=yes

dmhedit infile="16514_background_clean.evt" filelist=none key="OBS_ID" value="16514" operation="add"
blanksky_image bkgfile=16514_background_clean.evt outroot=16514_blank imgfile=16514_0.5-7_thresh.img tmpdir=./ clobber=yes

cd /home/jpbreuer/Chandra_data/a2256/16515
punlearn ardlib
acis_set_ardlib /home/jpbreuer/Chandra_data/a2256/16515/repro/acisf16515_repro_bpix1.fits

punlearn fluximage
fluximage repro/ repro/16515 binsize=1 bands=0.5:7:2.3 clobber=yes
cd repro
punlearn mkpsfmap
mkpsfmap 16515_0.5-7_thresh.img outfile=16515_0.5-7.psf energy=2.3 ecf=0.9 clobber=yes
punlearn wavdetect
wavdetect infile=16515_0.5-7_thresh.img psffile=16515_0.5-7.psf expfile=16515_0.5-7_thresh.expmap outfile=src_0.5-7.fits scellfile=scell_0.5-7.fits imagefile=imgfile_0.5-7.fits defnbkgfile=nbkg_0.5-7.fits regfile=16515_src_0.5-7.reg scales="1 2 4 8 16 32" maxiter=3 sigthresh=5e-6 ellsigma=5.0 clobber=yes

echo 'Made regions... Done!'
echo 'CHECK REGLIST AND REMOVE ALL POINT SOURCES AS WELL AS CLUSTER EMISSION'

echo 'Make GTI for deflaring observations'

punlearn dmcopy
dmcopy "acisf16515_repro_evt2.fits[exclude sky=region(16515_src_0.5-7-noem.reg)]" 16515_nosources.evt option=all clobber=yes
punlearn dmcopy
dmcopy "16515_nosources.evt[energy=500:7000]" 16515_0.5-7_nosources.evt option=all clobber=yes
punlearn dmextract
dmextract "16515_0.5-7_nosources.evt[bin time=::259.28]" 16515_0.5-7.lc opt=ltc1 clobber=yes
punlearn deflare
deflare 16515_0.5-7.lc 16515_0.5-7.gti method=clean
punlearn dmcopy
dmcopy "acisf16515_repro_evt2.fits[@16515_0.5-7.gti]" acisf16515_clean_evt.fits opt=all clobber=yes

echo 'Make background with GTI'

punlearn blanksky
blanksky evtfile="acisf16515_repro_evt2.fits[@16515_0.5-7.gti]" outfile=16515_vfbackground_clean.evt tmpdir=./ clobber=yes
punlearn dmcopy
dmcopy "16515_vfbackground_clean.evt[status=0]" 16515_background_clean.evt clobber=yes

dmhedit infile="16515_background_clean.evt" filelist=none key="OBS_ID" value="16515" operation="add"
blanksky_image bkgfile=16515_background_clean.evt outroot=16515_blank imgfile=16515_0.5-7_thresh.img tmpdir=./ clobber=yes

cd /home/jpbreuer/Chandra_data/a2256/16516
punlearn ardlib
acis_set_ardlib /home/jpbreuer/Chandra_data/a2256/16516/repro/acisf16516_repro_bpix1.fits

punlearn fluximage
fluximage repro/ repro/16516 binsize=1 bands=0.5:7:2.3 clobber=yes
cd repro
punlearn mkpsfmap
mkpsfmap 16516_0.5-7_thresh.img outfile=16516_0.5-7.psf energy=2.3 ecf=0.9 clobber=yes
punlearn wavdetect
wavdetect infile=16516_0.5-7_thresh.img psffile=16516_0.5-7.psf expfile=16516_0.5-7_thresh.expmap outfile=src_0.5-7.fits scellfile=scell_0.5-7.fits imagefile=imgfile_0.5-7.fits defnbkgfile=nbkg_0.5-7.fits regfile=16516_src_0.5-7.reg scales="1 2 4 8 16 32" maxiter=3 sigthresh=5e-6 ellsigma=5.0 clobber=yes

echo 'Made regions... Done!'
echo 'CHECK REGLIST AND REMOVE ALL POINT SOURCES AS WELL AS CLUSTER EMISSION'

echo 'Make GTI for deflaring observations'

punlearn dmcopy
dmcopy "acisf16516_repro_evt2.fits[exclude sky=region(16516_src_0.5-7-noem.reg)]" 16516_nosources.evt option=all clobber=yes
punlearn dmcopy
dmcopy "16516_nosources.evt[energy=500:7000]" 16516_0.5-7_nosources.evt option=all clobber=yes
punlearn dmextract
dmextract "16516_0.5-7_nosources.evt[bin time=::259.28]" 16516_0.5-7.lc opt=ltc1 clobber=yes
punlearn deflare
deflare 16516_0.5-7.lc 16516_0.5-7.gti method=clean
punlearn dmcopy
dmcopy "acisf16516_repro_evt2.fits[@16516_0.5-7.gti]" acisf16516_clean_evt.fits opt=all clobber=yes

echo 'Make background with GTI'

punlearn blanksky
blanksky evtfile="acisf16516_repro_evt2.fits[@16516_0.5-7.gti]" outfile=16516_vfbackground_clean.evt tmpdir=./ clobber=yes
punlearn dmcopy
dmcopy "16516_vfbackground_clean.evt[status=0]" 16516_background_clean.evt clobber=yes

dmhedit infile="16516_background_clean.evt" filelist=none key="OBS_ID" value="16516" operation="add"
blanksky_image bkgfile=16516_background_clean.evt outroot=16516_blank imgfile=16516_0.5-7_thresh.img tmpdir=./ clobber=yes

echo 'Merge all Observations'
cd /home/jpbreuer/Chandra_data/a2256
find "$(pwd)" -name "acisf*clean*" > cleanevt2.list
punlearn merge_obs
merge_obs @cleanevt2.list /home/jpbreuer/Chandra_data/a2256/merged/ bin=1 bands=broad,csc clobber=yes
echo 'Merge all Observations... Done!'

echo 'CHECK SCALING OF SCALED FLUX IMG WITH THRESHOLD'
echo 'Removing Point Sources'
cd /home/jpbreuer/Chandra_data/a2256/merged
wavdetect infile=broad_thresh.img psffile=none expfile=broad_thresh.expmap outfile=src_0.5-7.fits scellfile=scell_0.5-7.fits imagefile=imgfile_0.5-7.fits defnbkgfile=nbkg_0.5-7.fits regfile=broad_src_0.5-7.reg scales="1 2 4 8 16 32" maxiter=3 sigthresh=5e-6 ellsigma=5.0 clobber=yes

echo 'CHECK AND CORRECT THE POINT SOURCE REGIONS'

dmcopy "scaled_broad_flux.fits[exclude sky=region(/home/jpbreuer/Chandra_data/a2256/regionfiles/broad_src_0.5-7-pointsources.reg)]" scaled_broad_flux_sps.fits clobber=yes
echo 'Removing Point Sources... Done!'

echo 'Reducing FOV to specific region'
dmcopy "scaled_broad_flux_sps.fits[sky=region(/home/jpbreuer/Chandra_data/a2256/regionfiles/square.reg)]" scaled_broad_flux_fov_sps.fits clobber=yes
echo 'Reducing FOV to specific region... Done!'

