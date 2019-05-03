#### Machine Learning

# MLBase

using MLBase

repeach(1:4,2)
    # 8-element Array{Int64,1}:
    #  1
    #  1
    #  2
    #  2
    #  3
    #  3
    #  4
    #  4

repeach(['a','b','c'],[1,2,3])
    # 6-element Array{Char,1}:
    #  'a'
    #  'b'
    #  'b'
    #  'c'
    #  'c'
    #  'c'

A = reshape(collect(1:6),2,3)
    # 2×3 Array{Int64,2}:
    #  1  3  5
    #  2  4  6
repeachcol(A,2)
    # 2×6 Array{Int64,2}:
    #  1  1  3  3  5  5
    #  2  2  4  4  6  6

repeachrow(A,2)
    # 4×3 Array{Int64,2}:
    #  1  3  5
    #  1  3  5
    #  2  4  6
    #  2  4  6

labels = labelmap(['a','a','a','b','b','c'])
    # LabelMap (with 3 labels):
    # [1] a
    # [2] b
    # [3] c

labelencode(labels,['c','b','c','a'])
    # 4-element Array{Int64,1}:
    #  3
    #  2
    #  3
    #  1