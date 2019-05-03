module A
    a = 1
end

module B
    module C
        c = 2
    end
    b = C.c
    import ..A
    d = A.a
end

# Main.B

