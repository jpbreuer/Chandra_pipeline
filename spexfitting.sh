mkdir /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex
spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_0 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_0
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_0 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_0
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_0 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_0
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_0 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_0
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_0 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_0
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_0 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_0
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_0 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_0
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 0 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_0 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg0 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg0
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_1 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_1
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_1 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_1
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_1 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_1
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_1 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_1
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_1 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_1
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_1 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_1
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_1 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_1
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 1 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_1 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg1 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg1
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_2 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_2
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_2 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_2
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_2 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_2
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_2 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_2
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_2 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_2
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_2 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_2
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_2 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_2
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 2 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_2 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg2 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg2
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_3 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_3
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_3 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_3
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_3 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_3
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_3 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_3
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_3 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_3
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_3 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_3
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_3 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_3
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 3 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_3 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg3 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg3
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_4 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_4
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_4 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_4
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_4 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_4
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_4 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_4
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_4 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_4
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_4 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_4
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_4 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_4
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 4 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_4 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg4 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg4
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_5 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_5
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_5 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_5
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_5 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_5
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_5 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_5
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_5 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_5
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_5 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_5
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_5 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_5
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 5 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_5 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg5 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg5
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_6 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_6
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_6 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_6
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_6 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_6
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_6 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_6
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_6 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_6
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_6 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_6
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_6 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_6
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 6 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_6 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg6 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg6
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_7 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_7
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_7 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_7
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_7 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_7
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_7 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_7
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_7 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_7
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_7 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_7
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_7 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_7
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 7 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_7 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg7 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg7
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_8 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_8
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_8 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_8
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_8 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_8
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_8 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_8
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_8 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_8
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_8 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_8
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_8 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_8
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 8 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_8 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg8 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg8
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_9 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_9
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_9 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_9
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_9 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_9
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_9 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_9
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_9 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_9
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_9 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_9
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_9 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_9
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 9 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_9 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg9 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg9
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_10 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_10
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_10 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_10
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_10 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_10
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_10 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_10
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_10 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_10
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_10 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_10
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_10 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_10
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 10 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_10 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg10 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg10
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_11 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_11
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_11 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_11
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_11 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_11
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_11 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_11
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_11 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_11
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_11 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_11
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_11 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_11
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 11 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_11 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg11 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg11
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_12 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_12
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_12 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_12
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_12 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_12
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_12 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_12
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_12 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_12
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_12 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_12
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_12 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_12
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 12 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_12 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg12 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg12
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_13 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_13
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_13 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_13
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_13 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_13
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_13 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_13
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_13 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_13
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_13 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_13
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_13 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_13
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 13 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_13 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg13 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg13
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_14 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_14
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_14 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_14
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_14 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_14
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_14 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_14
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_14 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_14
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_14 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_14
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_14 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_14
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 14 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_14 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg14 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg14
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_15 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_15
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_15 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_15
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_15 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_15
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_15 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_15
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_15 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_15
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_15 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_15
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_15 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_15
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 15 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_15 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg15 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg15
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_16 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_16
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_16 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_16
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_16 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_16
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_16 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_16
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_16 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_16
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_16 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_16
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_16 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_16
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 16 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_16 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg16 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg16
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_17 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_17
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_17 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_17
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_17 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_17
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_17 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_17
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_17 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_17
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_17 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_17
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_17 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_17
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 17 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_17 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg17 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg17
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_18 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_18
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_18 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_18
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_18 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_18
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_18 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_18
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_18 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_18
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_18 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_18
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_18 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_18
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 18 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_18 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg18 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg18
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_19 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_19
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_19 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_19
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_19 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_19
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_19 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_19
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_19 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_19
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_19 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_19
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_19 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_19
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 19 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_19 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg19 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg19
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_20 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_20
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_20 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_20
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_20 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_20
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_20 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_20
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_20 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_20
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_20 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_20
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_20 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_20
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 20 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_20 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg20 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg20
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_21 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_21
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_21 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_21
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_21 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_21
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_21 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_21
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_21 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_21
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_21 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_21
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_21 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_21
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 21 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_21 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg21 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg21
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_22 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_22
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_22 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_22
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_22 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_22
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_22 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_22
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_22 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_22
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_22 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_22
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_22 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_22
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 22 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_22 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg22 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg22
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_23 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_23
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_23 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_23
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_23 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_23
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_23 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_23
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_23 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_23
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_23 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_23
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_23 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_23
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 23 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_23 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg23 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg23
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_24 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_24
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_24 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_24
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_24 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_24
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_24 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_24
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_24 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_24
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_24 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_24
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_24 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_24
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 24 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_24 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg24 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg24
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_25 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_25
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_25 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_25
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_25 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_25
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_25 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_25
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_25 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_25
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_25 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_25
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_25 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_25
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 25 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_25 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg25 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg25
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_26 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_26
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_26 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_26
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_26 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_26
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_26 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_26
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_26 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_26
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_26 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_26
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_26 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_26
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 26 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_26 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg26 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg26
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_27 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_27
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_27 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_27
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_27 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_27
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_27 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_27
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_27 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_27
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_27 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_27
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_27 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_27
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 27 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_27 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg27 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg27
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_28 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_28
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_28 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_28
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_28 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_28
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_28 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_28
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_28 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_28
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_28 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_28
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_28 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_28
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 28 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_28 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg28 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg28
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_29 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_29
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_29 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_29
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_29 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_29
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_29 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_29
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_29 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_29
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_29 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_29
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_29 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_29
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 29 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_29 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg29 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg29
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_30 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_30
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_30 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_30
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_30 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_30
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_30 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_30
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_30 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_30
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_30 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_30
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_30 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_30
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 30 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_30 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg30 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg30
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_31 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_31
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_31 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_31
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_31 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_31
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_31 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_31
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_31 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_31
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_31 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_31
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_31 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_31
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 31 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_31 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg31 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg31
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_32 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_32
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_32 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_32
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_32 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_32
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_32 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_32
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_32 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_32
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_32 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_32
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_32 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_32
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 32 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_32 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg32 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg32
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_33 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_33
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_33 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_33
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_33 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_33
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_33 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_33
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_33 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_33
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_33 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_33
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_33 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_33
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 33 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_33 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg33 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg33
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_34 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_34
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_34 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_34
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_34 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_34
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_34 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_34
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_34 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_34
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_34 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_34
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_34 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_34
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 34 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_34 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg34 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg34
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_35 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_35
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_35 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_35
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_35 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_35
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_35 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_35
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_35 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_35
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_35 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_35
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_35 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_35
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 35 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_35 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg35 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg35
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_36 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_36
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_36 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_36
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_36 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_36
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_36 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_36
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_36 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_36
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_36 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_36
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_36 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_36
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 36 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_36 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg36 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg36
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_37 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_37
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_37 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_37
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_37 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_37
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_37 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_37
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_37 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_37
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_37 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_37
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_37 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_37
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 37 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_37 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg37 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg37
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_38 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_38
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_38 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_38
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_38 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_38
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_38 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_38
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_38 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_38
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_38 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_38
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_38 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_38
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 38 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_38 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg38 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg38
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_39 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_39
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_39 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_39
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_39 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_39
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_39 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_39
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_39 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_39
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_39 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_39
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_39 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_39
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 39 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_39 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg39 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg39
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_40 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_40
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_40 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_40
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_40 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_40
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_40 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_40
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_40 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_40
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_40 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_40
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_40 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_40
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 40 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_40 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg40 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg40
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_41 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_41
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_41 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_41
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_41 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_41
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_41 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_41
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_41 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_41
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_41 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_41
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_41 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_41
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 41 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_41 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg41 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg41
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_42 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_42
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_42 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_42
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_42 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_42
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_42 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_42
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_42 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_42
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_42 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_42
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_42 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_42
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 42 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_42 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg42 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg42
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_43 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_43
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_43 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_43
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_43 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_43
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_43 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_43
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_43 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_43
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_43 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_43
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_43 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_43
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 43 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_43 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg43 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg43
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_44 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_44
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_44 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_44
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_44 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_44
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_44 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_44
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_44 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_44
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_44 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_44
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_44 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_44
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 44 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_44 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg44 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg44
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_45 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_45
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_45 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_45
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_45 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_45
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_45 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_45
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_45 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_45
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_45 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_45
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_45 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_45
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 45 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_45 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg45 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg45
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_46 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_46
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_46 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_46
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_46 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_46
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_46 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_46
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_46 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_46
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_46 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_46
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_46 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_46
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 46 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_46 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg46 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg46
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_47 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_47
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_47 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_47
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_47 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_47
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_47 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_47
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_47 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_47
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_47 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_47
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_47 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_47
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 47 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_47 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg47 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg47
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_48 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_48
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_48 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_48
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_48 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_48
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_48 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_48
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_48 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_48
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_48 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_48
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_48 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_48
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 48 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_48 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg48 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg48
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_49 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_49
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_49 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_49
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_49 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_49
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_49 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_49
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_49 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_49
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_49 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_49
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_49 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_49
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 49 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_49 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg49 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg49
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_50 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_50
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_50 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_50
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_50 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_50
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_50 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_50
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_50 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_50
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_50 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_50
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_50 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_50
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 50 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_50 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg50 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg50
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_51 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_51
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_51 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_51
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_51 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_51
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_51 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_51
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_51 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_51
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_51 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_51
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_51 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_51
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 51 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_51 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg51 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg51
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_52 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_52
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_52 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_52
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_52 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_52
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_52 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_52
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_52 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_52
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_52 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_52
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_52 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_52
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 52 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_52 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg52 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg52
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_53 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_53
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_53 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_53
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_53 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_53
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_53 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_53
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_53 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_53
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_53 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_53
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_53 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_53
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 53 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_53 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg53 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg53
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_54 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_54
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_54 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_54
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_54 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_54
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_54 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_54
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_54 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_54
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_54 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_54
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_54 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_54
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 54 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_54 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg54 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg54
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_55 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_55
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_55 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_55
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_55 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_55
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_55 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_55
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_55 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_55
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_55 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_55
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_55 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_55
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 55 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_55 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg55 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg55
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_56 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_56
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_56 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_56
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_56 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_56
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_56 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_56
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_56 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_56
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_56 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_56
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_56 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_56
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 56 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_56 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg56 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg56
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_57 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_57
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_57 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_57
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_57 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_57
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_57 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_57
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_57 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_57
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_57 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_57
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_57 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_57
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 57 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_57 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg57 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg57
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_58 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_58
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_58 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_58
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_58 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_58
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_58 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_58
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_58 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_58
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_58 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_58
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_58 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_58
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 58 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_58 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg58 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg58
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_59 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_59
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_59 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_59
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_59 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_59
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_59 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_59
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_59 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_59
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_59 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_59
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_59 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_59
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 59 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_59 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg59 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg59
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_60 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_60
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_60 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_60
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_60 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_60
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_60 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_60
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_60 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_60
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_60 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_60
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_60 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_60
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 60 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_60 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg60 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg60
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_61 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_61
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_61 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_61
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_61 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_61
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_61 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_61
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_61 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_61
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_61 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_61
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_61 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_61
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 61 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_61 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg61 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg61
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_62 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_62
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_62 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_62
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_62 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_62
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_62 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_62
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_62 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_62
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_62 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_62
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_62 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_62
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 62 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_62 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg62 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg62
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_63 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_63
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_63 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_63
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_63 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_63
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_63 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_63
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_63 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_63
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_63 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_63
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_63 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_63
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 63 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_63 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg63 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg63
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_64 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_64
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_64 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_64
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_64 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_64
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_64 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_64
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_64 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_64
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_64 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_64
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_64 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_64
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 64 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_64 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg64 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg64
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_65 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_65
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_65 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_65
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_65 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_65
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_65 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_65
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_65 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_65
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_65 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_65
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_65 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_65
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 65 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_65 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg65 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg65
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_66 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_66
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_66 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_66
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_66 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_66
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_66 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_66
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_66 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_66
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_66 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_66
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_66 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_66
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 66 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_66 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg66 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg66
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_67 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_67
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_67 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_67
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_67 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_67
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_67 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_67
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_67 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_67
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_67 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_67
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_67 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_67
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 67 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_67 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg67 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg67
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_68 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_68
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_68 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_68
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_68 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_68
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_68 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_68
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_68 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_68
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_68 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_68
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_68 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_68
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 68 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_68 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg68 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg68
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_69 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_69
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_69 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_69
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_69 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_69
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_69 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_69
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_69 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_69
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_69 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_69
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_69 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_69
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 69 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_69 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg69 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg69
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_70 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_70
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_70 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_70
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_70 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_70
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_70 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_70
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_70 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_70
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_70 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_70
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_70 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_70
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 70 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_70 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg70 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg70
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_71 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_71
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_71 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_71
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_71 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_71
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_71 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_71
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_71 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_71
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_71 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_71
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_71 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_71
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 71 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_71 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg71 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg71
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_72 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_72
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_72 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_72
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_72 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_72
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_72 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_72
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_72 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_72
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_72 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_72
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_72 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_72
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 72 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_72 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg72 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg72
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_73 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_73
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_73 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_73
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_73 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_73
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_73 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_73
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_73 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_73
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_73 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_73
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_73 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_73
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 73 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_73 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg73 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg73
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_74 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_74
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_74 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_74
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_74 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_74
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_74 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_74
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_74 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_74
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_74 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_74
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_74 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_74
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 74 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_74 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg74 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg74
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_75 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_75
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_75 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_75
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_75 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_75
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_75 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_75
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_75 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_75
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_75 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_75
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_75 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_75
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 75 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_75 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg75 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg75
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_76 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_76
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_76 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_76
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_76 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_76
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_76 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_76
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_76 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_76
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_76 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_76
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_76 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_76
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 76 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_76 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg76 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg76
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_77 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_77
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_77 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_77
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_77 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_77
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_77 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_77
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_77 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_77
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_77 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_77
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_77 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_77
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 77 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_77 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg77 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg77
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_78 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_78
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_78 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_78
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_78 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_78
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_78 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_78
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_78 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_78
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_78 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_78
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_78 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_78
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 78 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_78 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg78 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg78
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_79 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_79
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_79 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_79
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_79 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_79
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_79 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_79
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_79 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_79
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_79 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_79
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_79 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_79
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 79 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_79 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg79 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg79
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_80 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_80
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_80 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_80
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_80 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_80
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_80 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_80
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_80 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_80
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_80 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_80
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_80 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_80
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 80 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_80 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg80 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg80
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_81 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_81
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_81 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_81
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_81 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_81
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_81 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_81
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_81 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_81
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_81 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_81
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_81 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_81
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 81 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_81 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg81 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg81
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_82 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_82
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_82 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_82
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_82 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_82
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_82 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_82
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_82 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_82
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_82 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_82
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_82 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_82
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 82 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_82 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg82 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg82
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_83 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_83
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_83 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_83
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_83 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_83
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_83 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_83
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_83 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_83
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_83 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_83
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_83 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_83
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 83 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_83 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg83 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg83
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_84 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_84
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_84 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_84
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_84 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_84
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_84 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_84
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_84 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_84
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_84 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_84
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_84 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_84
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 84 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_84 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg84 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg84
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_85 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_85
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_85 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_85
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_85 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_85
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_85 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_85
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_85 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_85
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_85 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_85
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_85 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_85
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 85 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_85 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg85 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg85
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_86 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_86
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_86 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_86
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_86 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_86
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_86 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_86
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_86 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_86
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_86 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_86
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_86 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_86
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 86 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_86 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg86 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg86
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_87 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_87
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_87 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_87
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_87 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_87
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_87 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_87
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_87 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_87
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_87 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_87
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_87 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_87
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 87 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_87 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg87 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg87
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_88 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_88
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_88 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_88
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_88 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_88
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_88 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_88
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_88 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_88
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_88 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_88
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_88 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_88
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 88 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_88 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg88 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg88
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_89 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_89
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_89 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_89
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_89 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_89
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_89 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_89
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_89 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_89
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_89 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_89
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_89 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_89
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 89 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_89 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg89 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg89
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_90 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_90
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_90 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_90
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_90 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_90
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_90 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_90
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_90 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_90
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_90 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_90
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_90 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_90
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 90 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_90 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg90 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg90
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_91 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_91
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_91 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_91
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_91 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_91
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_91 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_91
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_91 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_91
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_91 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_91
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_91 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_91
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 91 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_91 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg91 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg91
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_92 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_92
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_92 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_92
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_92 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_92
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_92 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_92
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_92 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_92
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_92 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_92
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_92 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_92
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 92 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_92 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg92 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg92
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_93 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_93
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_93 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_93
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_93 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_93
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_93 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_93
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_93 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_93
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_93 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_93
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_93 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_93
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 93 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_93 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg93 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg93
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_94 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_94
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_94 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_94
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_94 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_94
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_94 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_94
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_94 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_94
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_94 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_94
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_94 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_94
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 94 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_94 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg94 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg94
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_95 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_95
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_95 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_95
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_95 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_95
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_95 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_95
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_95 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_95
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_95 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_95
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_95 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_95
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 95 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_95 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg95 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg95
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_96 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_96
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_96 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_96
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_96 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_96
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_96 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_96
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_96 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_96
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_96 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_96
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_96 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_96
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 96 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_96 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg96 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg96
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_97 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_97
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_97 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_97
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_97 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_97
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_97 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_97
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_97 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_97
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_97 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_97
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_97 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_97
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 97 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_97 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg97 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg97
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_98 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_98
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_98 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_98
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_98 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_98
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_98 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_98
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_98 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_98
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_98 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_98
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_98 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_98
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 98 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_98 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg98 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg98
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_99 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_99
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_99 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_99
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_99 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_99
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_99 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_99
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_99 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_99
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_99 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_99
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_99 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_99
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 99 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_99 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg99 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg99
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_100 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_100
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_100 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_100
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_100 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_100
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_100 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_100
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_100 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_100
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_100 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_100
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_100 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_100
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 100 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_100 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg100 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg100
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_101 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_101
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_101 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_101
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_101 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_101
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_101 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_101
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_101 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_101
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_101 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_101
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_101 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_101
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 101 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_101 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg101 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg101
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_102 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_102
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_102 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_102
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_102 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_102
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_102 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_102
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_102 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_102
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_102 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_102
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_102 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_102
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 102 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_102 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg102 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg102
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_103 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_103
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_103 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_103
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_103 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_103
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_103 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_103
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_103 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_103
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_103 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_103
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_103 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_103
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 103 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_103 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg103 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg103
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_104 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_104
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_104 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_104
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_104 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_104
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_104 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_104
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_104 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_104
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_104 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_104
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_104 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_104
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 104 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_104 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg104 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg104
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_105 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_105
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_105 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_105
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_105 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_105
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_105 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_105
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_105 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_105
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_105 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_105
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_105 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_105
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 105 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_105 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg105 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg105
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_106 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_106
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_106 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_106
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_106 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_106
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_106 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_106
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_106 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_106
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_106 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_106
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_106 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_106
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 106 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_106 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg106 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg106
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_107 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_107
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_107 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_107
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_107 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_107
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_107 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_107
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_107 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_107
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_107 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_107
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_107 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_107
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 107 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_107 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg107 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg107
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_108 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_108
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_108 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_108
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_108 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_108
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_108 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_108
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_108 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_108
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_108 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_108
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_108 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_108
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 108 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_108 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg108 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg108
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_109 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_109
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_109 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_109
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_109 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_109
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_109 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_109
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_109 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_109
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_109 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_109
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_109 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_109
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 109 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_109 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg109 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg109
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_110 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_110
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_110 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_110
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_110 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_110
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_110 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_110
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_110 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_110
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_110 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_110
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_110 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_110
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 110 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_110 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg110 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg110
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_111 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_111
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_111 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_111
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_111 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_111
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_111 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_111
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_111 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_111
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_111 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_111
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_111 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_111
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 111 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_111 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg111 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg111
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_112 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_112
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_112 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_112
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_112 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_112
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_112 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_112
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_112 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_112
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_112 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_112
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_112 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_112
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 112 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_112 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg112 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg112
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_113 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_113
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_113 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_113
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_113 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_113
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_113 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_113
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_113 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_113
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_113 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_113
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_113 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_113
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 113 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_113 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg113 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg113
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_114 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_114
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_114 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_114
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_114 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_114
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_114 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_114
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_114 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_114
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_114 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_114
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_114 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_114
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 114 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_114 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg114 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg114
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_115 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_115
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_115 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_115
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_115 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_115
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_115 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_115
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_115 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_115
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_115 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_115
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_115 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_115
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 115 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_115 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg115 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg115
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_116 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_116
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_116 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_116
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_116 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_116
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_116 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_116
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_116 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_116
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_116 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_116
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_116 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_116
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 116 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_116 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg116 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg116
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_117 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_117
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_117 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_117
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_117 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_117
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_117 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_117
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_117 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_117
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_117 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_117
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_117 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_117
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 117 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_117 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg117 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg117
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_118 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_118
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_118 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_118
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_118 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_118
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_118 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_118
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_118 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_118
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_118 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_118
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_118 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_118
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 118 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_118 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg118 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg118
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_119 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_119
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_119 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_119
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_119 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_119
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_119 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_119
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_119 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_119
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_119 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_119
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_119 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_119
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 119 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_119 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg119 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg119
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_120 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_120
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_120 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_120
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_120 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_120
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_120 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_120
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_120 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_120
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_120 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_120
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_120 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_120
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 120 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_120 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg120 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg120
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_121 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_121
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_121 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_121
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_121 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_121
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_121 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_121
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_121 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_121
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_121 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_121
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_121 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_121
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 121 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_121 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg121 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg121
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_122 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_122
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_122 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_122
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_122 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_122
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_122 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_122
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_122 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_122
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_122 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_122
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_122 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_122
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 122 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_122 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg122 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg122
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_123 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_123
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_123 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_123
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_123 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_123
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_123 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_123
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_123 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_123
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_123 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_123
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_123 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_123
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 123 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_123 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg123 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg123
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_124 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_124
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_124 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_124
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_124 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_124
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_124 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_124
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_124 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_124
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_124 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_124
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_124 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_124
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 124 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_124 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg124 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg124
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_125 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_125
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_125 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_125
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_125 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_125
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_125 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_125
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_125 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_125
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_125 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_125
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_125 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_125
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 125 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_125 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg125 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg125
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_126 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_126
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_126 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_126
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_126 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_126
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_126 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_126
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_126 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_126
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_126 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_126
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_126 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_126
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 126 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_126 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg126 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg126
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_127 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_127
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_127 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_127
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_127 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_127
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_127 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_127
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_127 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_127
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_127 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_127
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_127 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_127
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 127 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_127 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg127 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg127
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_128 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_128
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_128 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_128
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_128 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_128
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_128 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_128
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_128 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_128
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_128 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_128
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_128 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_128
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 128 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_128 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg128 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg128
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_129 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_129
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_129 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_129
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_129 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_129
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_129 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_129
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_129 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_129
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_129 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_129
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_129 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_129
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 129 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_129 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg129 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg129
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_130 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_130
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_130 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_130
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_130 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_130
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_130 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_130
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_130 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_130
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_130 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_130
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_130 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_130
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 130 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_130 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg130 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg130
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_131 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_131
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_131 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_131
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_131 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_131
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_131 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_131
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_131 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_131
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_131 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_131
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_131 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_131
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 131 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_131 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg131 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg131
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_132 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_132
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_132 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_132
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_132 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_132
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_132 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_132
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_132 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_132
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_132 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_132
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_132 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_132
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 132 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_132 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg132 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg132
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_133 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_133
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_133 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_133
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_133 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_133
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_133 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_133
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_133 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_133
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_133 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_133
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_133 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_133
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 133 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_133 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg133 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg133
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_134 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_134
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_134 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_134
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_134 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_134
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_134 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_134
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_134 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_134
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_134 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_134
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_134 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_134
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 134 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_134 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg134 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg134
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_135 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_135
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_135 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_135
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_135 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_135
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_135 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_135
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_135 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_135
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_135 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_135
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_135 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_135
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 135 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_135 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg135 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg135
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_136 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_136
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_136 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_136
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_136 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_136
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_136 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_136
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_136 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_136
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_136 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_136
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_136 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_136
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 136 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_136 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg136 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg136
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_137 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_137
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_137 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_137
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_137 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_137
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_137 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_137
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_137 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_137
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_137 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_137
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_137 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_137
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 137 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_137 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg137 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg137
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_138 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_138
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_138 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_138
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_138 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_138
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_138 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_138
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_138 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_138
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_138 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_138
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_138 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_138
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 138 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_138 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg138 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg138
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_139 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_139
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_139 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_139
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_139 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_139
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_139 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_139
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_139 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_139
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_139 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_139
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_139 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_139
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 139 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_139 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg139 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg139
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_140 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_140
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_140 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_140
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_140 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_140
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_140 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_140
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_140 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_140
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_140 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_140
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_140 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_140
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 140 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_140 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg140 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg140
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_141 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_141
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_141 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_141
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_141 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_141
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_141 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_141
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_141 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_141
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_141 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_141
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_141 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_141
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 141 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_141 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg141 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg141
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_142 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_142
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_142 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_142
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_142 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_142
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_142 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_142
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_142 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_142
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_142 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_142
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_142 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_142
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 142 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_142 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg142 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg142
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_143 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_143
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_143 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_143
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_143 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_143
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_143 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_143
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_143 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_143
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_143 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_143
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_143 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_143
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 143 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_143 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg143 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg143
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_144 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_144
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_144 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_144
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_144 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_144
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_144 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_144
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_144 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_144
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_144 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_144
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_144 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_144
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 144 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_144 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg144 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg144
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_145 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_145
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_145 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_145
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_145 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_145
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_145 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_145
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_145 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_145
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_145 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_145
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_145 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_145
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 145 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_145 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg145 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg145
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_146 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_146
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_146 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_146
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_146 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_146
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_146 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_146
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_146 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_146
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_146 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_146
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_146 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_146
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 146 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_146 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg146 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg146
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_147 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_147
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_147 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_147
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_147 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_147
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_147 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_147
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_147 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_147
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_147 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_147
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_147 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_147
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 147 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_147 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg147 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg147
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_148 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_148
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_148 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_148
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_148 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_148
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_148 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_148
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_148 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_148
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_148 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_148
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_148 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_148
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 148 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_148 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg148 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg148
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_149 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_149
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_149 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_149
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_149 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_149
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_149 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_149
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_149 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_149
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_149 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_149
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_149 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_149
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 149 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_149 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg149 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg149
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_150 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_150
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_150 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_150
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_150 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_150
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_150 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_150
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_150 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_150
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_150 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_150
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_150 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_150
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 150 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_150 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg150 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg150
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_151 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_151
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_151 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_151
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_151 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_151
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_151 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_151
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_151 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_151
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_151 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_151
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_151 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_151
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 151 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_151 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg151 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg151
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_152 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_152
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_152 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_152
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_152 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_152
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_152 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_152
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_152 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_152
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_152 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_152
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_152 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_152
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 152 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_152 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg152 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg152
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_153 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_153
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_153 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_153
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_153 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_153
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_153 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_153
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_153 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_153
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_153 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_153
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_153 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_153
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 153 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_153 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg153 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg153
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_154 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_154
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_154 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_154
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_154 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_154
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_154 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_154
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_154 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_154
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_154 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_154
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_154 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_154
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 154 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_154 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg154 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg154
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_155 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_155
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_155 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_155
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_155 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_155
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_155 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_155
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_155 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_155
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_155 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_155
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_155 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_155
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 155 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_155 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg155 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg155
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_156 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_156
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_156 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_156
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_156 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_156
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_156 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_156
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_156 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_156
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_156 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_156
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_156 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_156
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 156 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_156 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg156 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg156
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_157 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_157
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_157 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_157
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_157 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_157
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_157 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_157
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_157 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_157
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_157 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_157
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_157 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_157
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 157 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_157 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg157 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg157
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_158 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_158
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_158 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_158
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_158 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_158
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_158 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_158
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_158 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_158
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_158 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_158
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_158 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_158
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 158 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_158 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg158 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg158
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_159 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_159
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_159 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_159
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_159 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_159
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_159 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_159
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_159 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_159
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_159 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_159
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_159 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_159
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 159 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_159 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg159 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg159
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_160 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_160
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_160 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_160
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_160 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_160
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_160 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_160
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_160 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_160
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_160 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_160
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_160 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_160
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 160 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_160 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg160 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg160
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_161 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_161
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_161 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_161
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_161 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_161
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_161 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_161
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_161 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_161
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_161 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_161
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_161 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_161
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 161 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_161 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg161 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg161
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_162 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_162
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_162 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_162
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_162 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_162
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_162 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_162
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_162 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_162
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_162 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_162
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_162 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_162
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 162 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_162 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg162 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg162
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_163 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_163
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_163 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_163
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_163 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_163
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_163 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_163
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_163 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_163
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_163 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_163
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_163 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_163
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 163 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_163 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg163 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg163
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_164 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_164
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_164 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_164
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_164 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_164
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_164 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_164
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_164 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_164
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_164 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_164
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_164 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_164
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 164 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_164 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg164 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg164
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_165 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_165
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_165 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_165
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_165 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_165
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_165 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_165
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_165 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_165
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_165 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_165
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_165 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_165
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 165 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_165 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg165 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg165
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_166 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_166
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_166 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_166
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_166 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_166
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_166 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_166
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_166 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_166
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_166 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_166
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_166 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_166
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 166 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_166 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg166 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg166
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_167 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_167
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_167 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_167
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_167 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_167
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_167 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_167
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_167 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_167
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_167 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_167
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_167 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_167
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 167 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_167 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg167 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg167
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_168 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_168
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_168 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_168
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_168 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_168
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_168 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_168
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_168 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_168
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_168 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_168
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_168 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_168
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 168 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_168 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg168 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg168
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_169 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_169
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_169 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_169
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_169 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_169
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_169 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_169
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_169 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_169
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_169 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_169
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_169 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_169
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 169 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_169 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg169 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg169
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_170 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_170
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_170 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_170
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_170 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_170
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_170 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_170
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_170 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_170
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_170 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_170
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_170 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_170
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 170 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_170 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg170 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg170
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_171 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_171
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_171 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_171
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_171 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_171
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_171 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_171
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_171 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_171
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_171 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_171
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_171 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_171
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 171 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_171 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg171 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg171
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_172 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_172
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_172 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_172
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_172 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_172
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_172 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_172
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_172 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_172
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_172 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_172
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_172 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_172
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 172 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_172 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg172 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg172
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_173 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_173
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_173 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_173
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_173 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_173
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_173 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_173
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_173 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_173
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_173 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_173
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_173 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_173
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 173 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_173 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg173 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg173
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_174 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_174
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_174 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_174
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_174 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_174
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_174 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_174
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_174 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_174
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_174 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_174
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_174 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_174
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 174 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_174 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg174 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg174
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_175 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_175
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_175 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_175
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_175 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_175
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_175 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_175
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_175 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_175
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_175 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_175
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_175 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_175
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 175 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_175 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg175 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg175
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_176 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_176
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_176 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_176
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_176 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_176
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_176 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_176
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_176 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_176
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_176 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_176
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_176 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_176
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 176 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_176 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg176 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg176
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_177 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_177
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_177 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_177
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_177 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_177
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_177 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_177
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_177 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_177
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_177 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_177
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_177 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_177
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 177 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_177 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg177 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg177
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_178 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_178
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_178 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_178
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_178 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_178
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_178 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_178
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_178 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_178
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_178 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_178
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_178 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_178
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 178 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_178 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg178 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg178
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_179 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_179
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_179 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_179
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_179 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_179
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_179 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_179
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_179 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_179
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_179 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_179
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_179 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_179
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 179 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_179 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg179 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg179
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_180 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_180
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_180 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_180
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_180 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_180
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_180 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_180
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_180 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_180
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_180 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_180
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_180 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_180
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 180 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_180 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg180 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg180
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_181 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_181
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_181 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_181
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_181 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_181
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_181 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_181
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_181 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_181
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_181 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_181
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_181 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_181
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 181 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_181 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg181 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg181
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_182 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_182
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_182 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_182
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_182 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_182
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_182 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_182
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_182 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_182
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_182 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_182
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_182 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_182
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 182 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_182 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg182 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg182
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_183 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_183
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_183 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_183
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_183 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_183
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_183 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_183
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_183 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_183
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_183 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_183
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_183 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_183
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 183 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_183 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg183 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg183
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_184 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_184
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_184 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_184
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_184 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_184
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_184 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_184
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_184 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_184
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_184 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_184
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_184 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_184
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 184 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_184 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg184 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg184
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_185 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_185
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_185 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_185
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_185 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_185
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_185 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_185
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_185 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_185
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_185 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_185
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_185 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_185
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 185 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_185 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg185 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg185
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_186 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_186
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_186 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_186
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_186 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_186
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_186 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_186
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_186 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_186
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_186 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_186
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_186 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_186
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 186 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_186 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg186 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg186
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_187 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_187
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_187 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_187
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_187 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_187
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_187 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_187
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_187 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_187
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_187 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_187
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_187 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_187
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 187 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_187 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg187 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg187
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_188 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_188
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_188 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_188
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_188 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_188
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_188 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_188
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_188 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_188
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_188 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_188
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_188 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_188
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 188 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_188 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg188 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg188
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_189 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_189
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_189 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_189
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_189 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_189
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_189 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_189
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_189 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_189
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_189 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_189
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_189 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_189
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 189 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_189 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg189 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg189
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_190 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_190
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_190 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_190
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_190 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_190
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_190 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_190
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_190 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_190
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_190 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_190
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_190 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_190
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 190 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_190 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg190 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg190
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_191 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_191
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_191 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_191
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_191 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_191
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_191 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_191
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_191 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_191
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_191 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_191
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_191 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_191
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 191 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_191 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg191 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg191
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_192 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_192
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_192 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_192
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_192 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_192
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_192 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_192
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_192 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_192
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_192 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_192
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_192 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_192
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 192 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_192 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg192 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg192
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_193 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_193
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_193 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_193
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_193 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_193
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_193 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_193
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_193 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_193
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_193 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_193
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_193 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_193
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 193 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_193 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg193 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg193
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_194 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_194
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_194 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_194
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_194 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_194
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_194 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_194
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_194 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_194
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_194 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_194
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_194 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_194
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 194 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_194 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg194 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg194
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_195 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_195
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_195 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_195
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_195 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_195
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_195 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_195
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_195 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_195
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_195 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_195
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_195 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_195
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 195 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_195 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg195 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg195
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_196 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_196
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_196 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_196
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_196 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_196
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_196 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_196
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_196 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_196
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_196 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_196
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_196 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_196
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 196 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_196 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg196 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg196
pl
pl cl 2
quit
EOF

spex << EOF
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_197 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1386_197
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_197 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_1521_197
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_197 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_2419_197
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_197 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16129_197
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_197 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16514_197
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_197 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16515_197
data /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_197 /home/jpbreuer/Chandra_data/a2256/specfile_output/xaf_16516_197
ign 0.0:0.7 u k
ign 7.:200 u k
fit meth cstat
distance 0.0581 z
com reds
com hot
com cie
com rel 3 1,2
pa 1 1 z v 0.0581
pa 1 1 z s f
pa 1 2 nh v 4.11E-04
pa 1 2 t v 5.E-04
pa 1 2 nh s f
pa 1 2 t s f
pa 1 3 n v 5.E+03
pa 1 3 t v 6
pa 1 3 06:28 v 0.4
abund lodders
elim 0.001:100. kev
obin 0.7:7 u k
fit print 1
plot dev xs
plot type data
plot x log
plot y log
plot ux k
plot uy k
plot rx 0.6 7.2
plot ry 0.0001 10
plot back disp t
plot set 1
plot data col 1
plot model col 2
plot back col 3
plot set all
plot frame new
plot frame 2
plot type chi
plot uy k
plot ux k
plot x log
plot rx 0.6 7.2
plot ry -0.35 0.35
plot view def f
plot view x 0.08 0.92
plot view y 0.1 0.3
plot cap y text "Rel. Error"
plot cap ut disp f
plot cap lt disp f
plot cap id disp f
plot frame 1
plot view def f
plot view x 0.08 0.92
plot view y 0.3 0.9
plot cap x disp f
plot cap id disp f
plot cap ut disp f
plot cap lt text "Region 197 Spectra"
plot box numlab bot f
plot
pl fr 2
pl uy rel
pl rx 0.6 7.2
pl ry -4 4
pl fr 1
pl ry 0.00002 1.0
pl fr 1
pl rx 0.6 7.2
fit meth cstat
fit 
fit w m
fit
fit
fit
fit
fit w m
fit
fit
fit w m
fit
pl fr 2
pl uy dchi
log out /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg_197 overwrite
p s
mo sho
error dchi 1.
error dchi 1.
error 1 3 n
error 1 3 t
log close out
par write /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg197 overwrite
pl dev cps /home/jpbreuer/Chandra_data/a2256/specfile_output/results_sn70_smooth100/spex/reg197
pl
pl cl 2
quit
EOF

