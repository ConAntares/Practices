# Variable Substitution

greet = "Hello"
whom = "World"
"$(greet), $(whom)!"            # "Hello, World!"

V = LinearIndices(1:4)          # [1, 2, 3, 4]
"V = $(V)"                      # "V = [1, 2, 3, 4]"
