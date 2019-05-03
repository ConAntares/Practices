#### Link

('a','b','c','d')               # ('a', 'b', 'c', 'd')
join(('a','b','c','d'))         # "abcd"
['a','b','c','d']               # ['a', 'b', 'c', 'd']
join(['a','b','c','d'])         # "abcd"

string('a','b','c','d')         # "abcd"
string(('a','b','c','d'))       # "('a', 'b', 'c', 'd')"
string(['a','b','c','d'])       # "['a', 'b', 'c', 'd']"

"abc"*"def"                     # "abcdef"
*("abc","def")                  # "abcdef"

map(*,"abc","def")              # ["abc", "def")]
broadcast(*,"abc","def")        # "abcdef"