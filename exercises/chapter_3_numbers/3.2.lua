--[[
Exercise 3.2: Explain the following results:
    > math.maxinteger * 2                   --> -2
    > math.mininteger * 2                   --> 0
    > math.maxinteger * math.maxinteger     --> 1
    > math.mininteger * math.mininteger     --> 0
(Remember that integer arithmetic always wraps around.)
--]]

print([[----------------------------------------------------------------------
maxint * 2 = maxint + 1 + maxint - 1 = minint + maxint - 1 = -1 - 1
= -2
----------------------------------------------------------------------
minint * 2 = minint - 1 + minint + 1 = maxint + minint + 1 = -1 + 1
= 0
----------------------------------------------------------------------
    maxint * maxint          =   maxint * (maxint + maxint - maxint)
<=> maxint * maxint          =   maxint * (-2 - maxint)
<=> maxint * maxint          =   -2 * maxint -  maxint * maxint
<=> maxint * maxint * 2      =   -2 * maxint
<=> maxint * maxint * 2      =   2
<=> maxint * maxint          =   1
----------------------------------------------------------------------
    minint * minint          =   minint * (minint + minint - minint")
<=> minint * minint          =   minint * (0 - minint)")
<=> minint * minint          =   -minint * minint")
<=> minint * minint          =   0")
----------------------------------------------------------------------]])
