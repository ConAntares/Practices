#### Muti Dimensions

M = Float64[i*j for i=1:3, j=2:4]
println(M)          # [2.0 3.0 4.0; 4.0 6.0 8.0; 6.0 9.0 12.0]

T = Float64[i*j-k for i=1:3, j=2:4, k=0:0.5:1.0]
println(T)          # [2.0 3.0 4.0; 4.0 6.0 8.0; 6.0 9.0 12.0] [1.5 2.5 3.5; 3.5 5.5 7.5; 5.5 8.5 11.5] [1.0 2.0 3.0; 3.0 5.0 7.0; 5.0 8.0 11.0]

#### Rank for Muti Dimensions

Mt = [  4 8 5
        7 1 3
        2 6 9  ]
println(Mt)         # [4 8 5; 7 1 3; 2 6 9]
S1 = sort(Mt,dims=1)
println(S1)         # [2 1 3; 4 6 5; 7 8 9]
S2 = sort(Mt,dims=2)
println(S2)         # [4 5 8; 1 3 7; 2 6 9]
println(Mt)         # [4 8 5; 7 1 3; 2 6 9]