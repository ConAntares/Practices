#### Search

str = "Hello World. There are 6 billion people in the world."

occursin("World",str)       # true
occursin("WORLD",str)       # false
occursin(str[2:4],str)      # true
occursin(str[4:2],str)      # true

in('W',str)                 # true
in('L',str)                 # false

'W' in str                  # true
'L' in str                  # false

findfirst("Hello",str)      # 1:5
findfirst("are",str)        # 20:22
findfirst("what",str)       #
findfirst("o",str)          # 5:5
findlast("o",str)           # 49:49

str[49]                     # 'o': ASCII/Unicode U+006f (category Ll: Letter, lowercase)

#### Replace

str = "abcd,efgh."

s = replace(str,"c"=>"v")           # "abvd,efgh."
s = replace(str,'c'=>'z')           # "abzd,efgh."

str = "abacadaeafagah"

s = replace(str,"a"=>"x"; count=0)  # "abacadaeafagah"
s = replace(str,"a"=>"x"; count=1)  # "xbacadaeafagah"
s = replace(str,"a"=>"x"; count=2)  # "xbxcadaeafagah"
s = replace(str,"a"=>"x"; count=3)  # "xbxcxdaeafagah"

#### Divide

s1 = "Hi,hello,hi,world!"
s2 = "Hi hello hi world "
a1 = split(s1,',')      # SubString{String}["Hi", "hello", "hi", "world!"]
a2 = split(s2,' ')      # Hi hello hi world
a2 = split(s2)          # SubString{String}["Hi", "hello", "hi", "world"]

s3 = "Hi 1 hello 2 hi 3 world!"
a3 = split(s3,r"\d")    # SubString{String}["Hi ", " hello ", " hi ", " world!"]


