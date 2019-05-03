#### Broadcast

A = broadcast(+,(1,3,5),(2,4,6))
println(A)                          # (3, 7, 11)

B = broadcast(x->x^2,(1,3,5))
println(B)                          # (1, 9, 25)

Cb = broadcast(+,[1,2,3],10)
println(Cb)                         # [11, 12, 13]

Cm = map(+,[1,2,3],10)
println(Cm)                         # [11]

D = broadcast(*,[1 2 3],10)
println(D)                          # [10 20 30]

E = broadcast(*,[1 2 3],10,2)
println(E)                          # [20 40 60]

H = [1 2 3]
V = [1;2;3]

F1 = broadcast(+,H,V)
println(F1)                         # [2 3 4; 3 4 5; 4 5 6]
F2 = broadcast(+,V,H)
println(F2)                         # [2 3 4; 3 4 5; 4 5 6]

M1 = map(+,H,V)
println(M1)                         # [2, 4, 6]
M2 = map(+,V,H)
println(M2)                         # [2, 4, 6]

G1 = broadcast(*,H,V)
println(G1)                         # [1 2 3; 2 4 6; 3 6 9]
G2 = broadcast(*,V,H)
println(G2)                         # [1 2 3; 2 4 6; 3 6 9]

A1 = map(*,H,V)
println(A1)                         # [1, 4, 9]
A2 = map(*,V,H)
println(A2)                         # [1, 4, 9]