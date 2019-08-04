--[[
Exercise 6.1: Write a function that takes an array and prints all its elements.
    print_tb{1, nil, 2}     --> 1   nil   2
--]]

function print_tb(a)
    print(table.unpack(a))
end
