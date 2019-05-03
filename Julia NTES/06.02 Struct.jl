## Struct

# Immutable Struct
struct Foo1
    x1
    x2::Int
    x3::Float64
end
foo1 = Foo("Hello",10,23.4)
typeof(foo1)                 # F00
foo1.x2                      # 10

# Mutable Struct
mutable struct Foo2
    x1
    x2::Int
    x3::Float64
end
foo2 = Foo2("Hello",10,23.4)
foo2.x2 = 20                # 20
foo2.x2                     # 20

# Date Type

# Type Unions
IntOrString = Union{Int,AbstractString}
