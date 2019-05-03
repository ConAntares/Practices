#### String

"Hello world"       # "Hello world"

"""Hello world"""   # "Hello world"

typeof(ans)         # String

# Index

str = "Hello world"

str[1]              # 'H': ASCII/Unicode U+0048 (category Lu: Letter, uppercase)
str[2]              # 'e': ASCII/Unicode U+0065 (category Ll: Letter, lowercase)
str[6]              # ' ': ASCII/Unicode U+0020 (category Zs: Separator, space)
str[end]            # 'd': ASCII/Unicode U+0064 (category Ll: Letter, lowercase)
str[end-1]          # 'l': ASCII/Unicode U+006c (category Ll: Letter, lowercase)
str[end÷2]          # 'o': ASCII/Unicode U+006f (category Ll: Letter, lowercase)

# Traverse

for i = 1:length(str)
    print(str[i]," ")   # H e l l o   w o r l d
end
println()

stu = "+-×÷"
for i in eachindex(stu)
    print(stu[i]," ")   # + - × ÷
end
println()
