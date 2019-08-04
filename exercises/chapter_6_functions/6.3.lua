--[[
Exercise 6.2: Write a function that takes an arbitrary number of values and
returns all of them, except the first one.
    echo_non_last(1, 2, 3, 4, 5)      --> 1   2   3   4
--]]

function echo_non_last(...)
    a = table.pack(...)
    a[a.n] = nil
    return table.unpack(a)
end
