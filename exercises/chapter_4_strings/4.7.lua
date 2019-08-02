--[[
Exercise 4.7: Write a function to check whether a given string is a palindrome:
    > ispali("step on no pets")     --> true
    > ispali("banana")              --> false
--]]

function ispali(s)
    if s == string.reverse(s) then
        return true
    end
    return false
end
