set terminal epslatex color dashed
set output 'Test_Gnuplottex-gnuplottex-fig1.tex'
        set sample 1000
        set key box top left
        set key width 4
        set key height 0.25
        set key specing 1.2
        set key opaque
        set xr [-5:5]
        set yr [-1:1]
        set xlabel '$x$-Label'
        set ylabel '$x$-Label'
        plot    sin(x) w l lc 1 lw 3 t "$\sin(x)$" ,\
                cos(x) w l lc 7 lw 3 t "$\cos(x)$" ,\
    
