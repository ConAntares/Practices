# Character
x = 'a'             # 'a': ASCII/Unicode U+0061 (category Ll: Letter, lowercase)
Int(x)              # 97
Char(97)            # a
y ='\u21'           # !
Int('\t')           # 9

# String
str = "Hello World"
str[1]              # H
str[1:2]            # He
str[end-2:end]      # rld
for i=firstindex(str):lastindex(str)
        print(str[i])   # Hello World
end
for i in str
    print(i)            # Hello World
end

x = "Hello"
y = "World"
println(string(x,y))                # HelloWorld
println(string("$x $y"))            # Hello World
n = 4
println("$n")                       # 4
println("abc"^3)                    # abcabcabc
println(lowercase("Hello"))         # hello
println(uppercase("Hello"))         # HELLO
r = replace("ABCD","AB"=>"PQ")
println(r)                          # PQCD
println(startswith("ABCD","AB"))    # true
println(startswith(" ABCD","AB"))   # false
s = strip(" ABCD")
println(startswith(s,"AB"))         # true
s = split("One Two Three")
println(s)                          # SubString{String}["One", "Two", "Three"]
println(join(s))                    # OneTwoThree 
println(join(s," "))                # One Two Three
println(occursin("One","One Two"))  # true
println(repeat("abc",10))           # abcabcabcabcabcabcabcabcabcabc

# Join
a = join(["A","B","C"],"+","×")
println(a)                          # A+B×C

# Regular Expression 
r = r"^\s*(?:#|$)"
println(typeof(r))                  # Regex
