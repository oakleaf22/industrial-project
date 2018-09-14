set term eps font 'latin modern roman,14'

set datafile separator ","
set output 'BIM_yrs.eps'
set boxwidth 0.5
set style fill solid border rgb "black"
set title ""
unset key
set xtics rotate by 45 right
set grid ytics lt 0 lw 1 lc rgb "#000000"
set ylabel 'Percent (%)'
plot "BIM_yrs.dat" using 2:xtic(1) with boxes
