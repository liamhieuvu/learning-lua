--[[
Exercise 4.3: Write a function to insert a string into a given position of
another one:
    > insert("hello world", 1, "start: ")    --> start: hello world
    > insert("hello world", 7, "small ")     --> hello small world
--]]

function insert(s, i, sub)
    if i == 0 then return s end
    if i > string.len(s) then return s .. sub end
    if i < -string.len(s) then return sub .. s end
    return string.sub(s, 1, i - 1) .. sub .. string.sub(s, i, -1)
end
