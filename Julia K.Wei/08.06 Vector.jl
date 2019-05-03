#### Vector

## Map

A = map(round,[1.2,2.3,3.4,4.5])
println(A)                          # [1.0, 2.0, 3.0, 4.0]

B = map(round,0.0:2.0:6.0)
println(B)                          # [0.0, 2.0, 4.0, 6.0]

C = map(tuple,(i+j for i=1:2, j=1:2),[1 3; 2 4])
println(C)                          # Tuple{Int64,Int64}[(2, 1) (3, 3); (3, 2) (4, 4)]

D = map(tuple,(i+j for i=1:2, j=1:2),['a' 'b'; 'c' 'd'])
println(D)                          # Tuple{Int64,Char}[(2, 'a') (3, 'b'); (3, 'c') (4, 'd')]

Es = [-2,-1,0,1,2]
E = map(x->
    begin
        if x<0 && iseven(x)
            return 0
        elseif x==0
            return 1
        else
            return x
        end
    end, Es)
println(E)                          # [0, -1, 1, 1, 2]

F = map(Es) do x
        if x<0 && iseven(x)
            return 0
        elseif x==0
            return 1
        else
            return x
        end
    end
println(F)                          # [0, -1, 1, 1, 2]

G = map(~,[1,2,3,4,5,6,7,8,9,10])
println(G)                          # [-2, -3, -4, -5, -6, -7, -8, -9, -10, -11]

H = map(+,[1,2,3],[10,20,30],[0.1,0.2,0.3])
println(H)                          # [11.1, 22.2, 33.3]

S = zeros(4)
println(S)                          # [0.0, 0.0, 0.0, 0.0]
Q = map!(x->x*2,S,[1,2,3,4])
println(S)                          # [2.0, 4.0, 6.0, 8.0]
println(Q)                          # [2.0, 4.0, 6.0, 8.0]

P = Q/2
println(P)                          # [1.0, 2.0, 3.0, 4.0]
map!(+,P,[10,20,30,40],[0.1,0.2,0.3,0.4])
println(P)                          # [10.1, 20.2, 30.3, 40.4]