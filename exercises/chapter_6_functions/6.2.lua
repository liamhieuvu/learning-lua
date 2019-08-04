--[[
Exercise 6.2: Write a function that takes an arbitrary number of values and
returns all of them, except the first one.
    echo_non_first(1, 2, 3, 4, 5)      --> 2   3   4   5
--]]

function echo_non_first(...)
    a = table.pack(...)
    temp = {}
    for i = 1, (a.n - 1) do
        temp[i] = a[i+1]
    end
    return table.unpack(temp)
end
