--[[
Exercise 5.5: Can you write the function from the previous item so that it uses
at most n additions and n multiplications (and no exponentiations)?
    poly(2, {1, 2, 3})  --> 17.0
--]]

--[[
Algorithm:
    a[0] + a[1]*x + ... + a[n]*x^(n-1) + a[n]*x^n
=   a[0] + x(a[1] + x(a[2] + x(... x(a[n-1] + a[n]x))))
--]]

function poly(x, a)
    -- Validate parameters
    if type(a) ~= "table" then return nil end
    if type(x) ~= "number" then return nil end

    result = a[#a]
    for i = (#a - 1), 1, -1 do
        result = a[i] + x * result
    end

    return result
end
