#### Char

'x'             # 'x': ASCII/Unicode U+0078 (category Ll: Letter, lowercase)
'α'             # 'α': Unicode U+03b1 (category Ll: Letter, lowercase)
'×'             # '×': Unicode U+00d7 (category Sm: Symbol, math)
'\U00d7'        # '×': Unicode U+00d7 (category Sm: Symbol, math)

convert(Int64,'x')                  # 120
convert(Float64,'x')                # 120.0
convert(Rational,'x')               # 0x00000078//0x00000001
convert(Complex,'x')                # 0x00000078 + 0x00000000im

Int64('x')                          # 120
Float64('x')                        # 120.0
Rational('x')                       # 0x00000078//0x00000001
Complex('x')                        # 0x00000078 + 0x00000000im

Rational(120)                       # 120//1
0x00000078//0x00000001 == 120//1    # true

'A' < 'X'       # true
'X' < 'a'       # true
'a' < 'x'       # true
'a' > 'x'       # false
'x' - 1         # w
