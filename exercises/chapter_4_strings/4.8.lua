--[[
Exercise 4.8: Redo the previous exercise so that it ignores differences in
spaces and punctuation.
    > ispali("step;     on, no pets.")  --> true
    > ispali("step;      n, no pets.")  --> false
--]]

function ispali(s)
    -- Remove spaces and pucntuation
    -- %p represents all punctuation characters
    -- %s represents all whitespace characters
    s = string.gsub(s, "[%p%s]", "")

    if s == string.reverse(s) then
        return true
    end
    return false
end
