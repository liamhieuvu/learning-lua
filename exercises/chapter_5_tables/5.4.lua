--[[
Exercise 5.4: We can represent a polynomial a[n]*x^n + a[n-1]*x^(n-1) + ... +
a[1]x + a[0] in Lua as a list of its coefficients, such as {a0, a1, ..., an}.
Write a function that takes a polynomial (represented as a table) and a value
for x and returns the polynomial value.
    poly(2, {1, 2, 3})  --> 17.0
--]]

function poly(x, a)
    -- Validate parameters
    if type(a) ~= "table" then return nil end
    if type(x) ~= "number" then return nil end

    result = 0
    for k, v in ipairs(a) do
        result = result + v * x^(k - 1)
    end

    return result
end
