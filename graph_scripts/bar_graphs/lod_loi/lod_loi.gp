set term eps font 'latin modern roman,14'
set datafile separator ","
set output 'lod_loi.eps'

set style data histogram
set style histogram cluster gap 1
set key outside 
set style fill solid border rgb "black"
set auto x
set ylabel 'Percent (%)'
set grid ytics lt 0 lw 1 lc rgb "#000000"
set yrange [0:*]
plot 'lod_loi.dat' using 2:xtic(1) title col, \
        '' using 3:xtic(1) title col, \
        '' using 4:xtic(1) title col 
