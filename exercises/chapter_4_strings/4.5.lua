--[[
Exercise 4.5: Write a function to remove a slice from a string; the slice
should be given by its initial position and its length:
    > remove("hello world", 7, 4)   --> hello d
--]]

function remove(s, idx, len)
    if len < 0 then
        print("Error: Length must be not smaller than zero!")
        return
    end

    return string.sub(s, 1, idx - 1) .. string.sub(s, idx + len, -1)
end
