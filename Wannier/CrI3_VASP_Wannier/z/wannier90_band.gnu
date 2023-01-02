set style data dots
set nokey
set xrange [0: 3.37595]
set yrange [ -6.83316 :  2.88680]
set arrow from  0.57814,  -6.83316 to  0.57814,   2.88680 nohead
set arrow from  1.15628,  -6.83316 to  1.15628,   2.88680 nohead
set arrow from  1.68798,  -6.83316 to  1.68798,   2.88680 nohead
set arrow from  2.21968,  -6.83316 to  2.21968,   2.88680 nohead
set arrow from  2.79781,  -6.83316 to  2.79781,   2.88680 nohead
set xtics ("X"  0.00000,"GM"  0.57814,"Y"  1.15628,"S"  1.68798,"X"  2.21968,"R"  2.79781,"GM"  3.37595)
 plot "wannier90_band.dat"
