module Bar
    x = 1
    foo() = x
end

import .Bar

x = -1

Bar.foo()