#### Date

using Dates

now()                               # 2019-03-08T18:59:23.681
DateTime(2018,04,17,13,40,50,10)    # 2018-04-17T13:40:50.01
Time(12,34,56,12,34,56)             # 12:34:56.012034056
Date(2018,04,17)                    # 2018-04-17

D = Date(2013,11,07)
year(D)                             # 2013
month(D)                            # 11
day(D)                              # 7
week(D)                             # 45
yearmonth(D)                        # (2013, 11)
monthday(D)                         # (11, 7)

yr,mh,dy = yearmonthday(D)
yr                                  # 2013
mh                                  # 11
dy                                  # 7

d1 = Date(2015,09,10)
d2 = Date(2017,06,23)

d1 < d2                             # true
d1 > d2                             # false
d1 == Date(2015,09,10)              # true
d2 - d1                             # 652 days
d2 - Day(256)                       # 2016-10-10

dr1 = Date(2006,10,01):Day(1):Date(2006,10,10)
for d in dr1
    println(d)
end

d = Date(2015,10,07)
monthname(d)                        # "October"
isleapyear(d)                       # false
dayofyear(d)                        # 280
dayofquarter(d)                     # 7
dayofmonth(d)                       # 7
tonext(d,Tuesday)                   # 2015-10-13