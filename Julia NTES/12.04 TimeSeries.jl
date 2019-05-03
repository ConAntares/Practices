# TimeSeries

using TimeSeries

dates = collect(Date(2018,1,1):Day(1):Date(2018,1,31))

dates[1:20]

ta = TimeArray(dates,rand(length(dates),2))

timestamp(ta::TimeArray)

values(ta::TimeArray)

colnames(ta::TimeArray)
    # `2-element Array{Symbol,1}:
    #  :A
    #  :B`