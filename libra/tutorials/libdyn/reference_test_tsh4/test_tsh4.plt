#
set terminal pngcairo font "arial,24" size 800, 600 enhanced rounded truecolor

set lmargin at screen 0.17
set rmargin at screen 0.95
set bmargin at screen 0.15
set tmargin at screen 0.95

#set xtics 1000.0
#set xrange [0.0:4.5]
#set yrange [-40:40]
#set key spacing 1.0 font ",24"
#set key top horizontal

# color definitions
set style line 11 lc rgb '#8b1a0e' pt 1 ps 1 lt 1 lw 5 # --- red
set style line 12 lc rgb '#FF4500' pt 6 ps 1 lt 1 lw 5 # --- orangered
set style line 13 lc rgb '#B22222' pt 6 ps 1 lt 1 lw 5 # --- firebrick
set style line 14 lc rgb '#DC143C' pt 6 ps 1 lt 1 lw 5 # --- crimson

set style line 21 lc rgb '#5e9c36' pt 6 ps 1 lt 1 lw 5 # --- green
set style line 22 lc rgb '#006400' pt 6 ps 1 lt 1 lw 5 # --- darkgreen
set style line 23 lc rgb '#228B22' pt 6 ps 1 lt 1 lw 5 # --- forestgreen
set style line 24 lc rgb '#808000' pt 6 ps 1 lt 1 lw 5 # --- olive

set style line 31 lc rgb '#8A2BE2' pt 6 ps 1 lt 1 lw 5 # --- blueviolet
set style line 32 lc rgb '#00008B' pt 6 ps 1 lt 1 lw 5 # --- darkblue

set style line 41 lc rgb '#2F4F4F' pt 6 ps 1 lt 1 lw 5 # --- darkslategray




set ytics 0.2

set xlabel "p, a.u." offset 0.0, 0.5
set ylabel "Transmission SH probabilities" offset 1.5, 0.0
set output "sh_pops_tr.png"
plot "p_scatt_tr_fssh.txt" using 2:8   w lp  ls 31  lw 2  t "SH(0), FSSH",\
     "p_scatt_tr_fssh.txt" using 2:10  w lp  ls 32  lw 2  t "SH(1), FSSH"
    


set xlabel "p, a.u." offset 0.0, 0.5
set ylabel "Reflection SH probabilities" offset 1.5, 0.0 
set output "sh_pops_re.png"
plot "p_scatt_re_fssh.txt" using 2:8   w lp  ls 31  lw 2  t "SH(0), FSSH",\
     "p_scatt_re_fssh.txt" using 2:10  w lp  ls 32  lw 2  t "SH(1), FSSH"




