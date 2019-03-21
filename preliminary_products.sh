cd /home/jpbreuer/Chandra_data/a2256/merged
echo 'Hardness Ratio Maps'
dmnautilus "broad_thresh.img" broad_thresh_a.fits snr=20 outmask=broad_thresh.map clob+
dmmaskbin "soft_thresh.img" broad_thresh.map ratiosoft.img clob+
dmmaskbin "hard_thresh.img" broad_thresh.map ratiohard.img clob+
dmimgcalc ratiosoft.img,ratiohard.img none hardness.fits op="imgout=((img2-img1)/(img2+img1))" clob+
mkdir simple_hardness
mv broad_thresh_a.fits broad_thresh.map ratiosoft.img ratiohard.img hardness.fits simple_hardness
echo 'Hardness Ratio Maps... Done!'

echo 'Adaptive Binning'
dmnautilus scaled_broad_flux_fov_sps.fits broad_thresh_sqsps_abin.fits snr=20 outmask=broad_thresh_sqsps_abin_mask.fits clob+
mkdir adaptbin
mv broad_thresh_sqsps_abin.fits broad_thresh_sqsps_abin_mask.fits adaptbin
echo 'Adaptive Binning... Done!'

echo 'Contour Binning'
contbin --sn=70 --smoothsn=100 --constrainfill --constrainval=2. scaled_broad_flux_fov_sps.fits
mkdir contbin_sn70_smooth100
mkdir contbin_sn70_smooth100/outreg
mv bin_signal_stats.qdp bin_sn_stats.qdp contbin_binmap.fits contbin_mask.fits contbin_out.fits contbin_sn.fits contbin_sn70_smooth100
cd contbin_sn70_smooth100
make_region_files --minx=3069 --miny=3175 --bin=1 --outdir=outreg contbin_binmap.fits
cd /home/jpbreuer/Chandra_data/a2256/merged/
echo 'Contour Binning... Done! Remember to run ./regcoordchange.sh'

echo 'Circle with Min Counts'
punlearn dmimgadapt
dmimgadapt infile="scaled_broad_flux_fov_sps.fits" outfile=smoothed_image.fits function=tophat counts=5000 minrad=1 maxrad=150 numrad=199 radscale=linear radfile=radii_min_counts.map mode=h clobber=yes verbose=3
mkdir circle_mincounts
mv smoothed_image* radii_min_counts* circle_mincounts
echo 'Circle with Min Counts... Done!'

echo 'Unsharp Masking'
aconvolve scaled_broad_flux_fov_sps.fits broad_thresh_square_sps_g3.fits "lib:gaus(2,5,5,3,3)" meth=fft mode=h clob+
aconvolve scaled_broad_flux_fov_sps.fits broad_thresh_square_sps_g30.fits "lib:gaus(2,5,5,30,30)" meth=fft mode=h clob+
dmimgcalc broad_thresh_square_sps_g3.fits broad_thresh_square_sps_g30.fits broad_thresh_square_sps_unsharpmask.fits sub clob+
mkdir unsharp_mask
mv broad_thresh_square_sps_g3.fits broad_thresh_square_sps_g30.fits broad_thresh_square_sps_unsharpmask.fits unsharp_mask
echo 'Unsharp Masking... Done!'

echo 'Gaussian Gradient Magnitude'
aconvolve scaled_broad_flux_fov_sps.fits gaus10.img "lib:gaus(2,5,5,10,10)" meth=fft clob+
aconvolve gaus10.img grad.img "txt:((0,1,0),(1,-4,1),(0,1,0))" meth=fft clob+ norm=none
dmimgcalc grad.img none ggm.img op="imgout=(abs(img1)*sqrt(2.0))" clob+
mkdir ggm
mv ggm.img grad.img gaus10.img ggm
echo 'Gaussian Gradient Magnitude... Done!'

echo 'Directional Gradient Estimators'
aconvolve scaled_broad_flux_fov_sps.fits gaus10.img "lib:gaus(2,5,5,10,10)" meth=fft clob+
aconvolve gaus10.img grad.img "txt:((0,1,0),(1,-4,1),(0,1,0))" meth=fft clob+ norm=none
dmimgcalc grad.img none ggm.img op="imgout=(abs(img1)*sqrt(2.0))" clob+
echo 'Computing Sobel Kernel: ((1,2,1),(0,0,0),(-1,-2,-1))	((-1,0,1),(-2,0,2),(-1,0,1))'
aconvolve gaus10.img dx.img "txt:((1,2,1),(0,0,0),(-1,-2,-1))" meth=fft clob+ norm=none
aconvolve gaus10.img dy.img "txt:((-1,0,1),(-2,0,2),(-1,0,1))" meth=fft clob+ norm=none
dmimgcalc dx.img,dy.img none sobel.mag op="imgout=sqrt((img1*img1)+(img2*img2))" mode=h clob+
dmimgcalc dx.img,dy.img none sobel.ang op="imgout=atan(img2/img1)" mode=h clob+
mv *.mag *.ang ggm
echo 'Directional Gradient Estimators... Done!'

