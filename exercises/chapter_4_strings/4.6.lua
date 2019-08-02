--[[
Exercise 4.6: Redo the previous exercise for UTF-8 strings:
    > remove("ação", 2, 2)      --> ao
--]]

function remove(s, idx, len)
    if len < 0 then
        print("Error: Length must be not smaller than zero!")
        return
    end

    first = utf8.offset(s, idx)
    last = utf8.offset(s, idx + len) - 1
    return string.sub(s, 1, first - 1) .. string.sub(s, last + 1, -1)
end
