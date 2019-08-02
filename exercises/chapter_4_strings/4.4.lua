--[[
Exercise 4.4: Redo the previous exercise for UTF-8 strings:
    > insert("ação", 5, "!")    --> ação!
--]]

function insert(s, i, sub)
    if i == 0 then return s end
    if i > utf8.len(s) then return s .. sub end
    if i < -utf8.len(s) then return sub .. s end
    place = utf8.offset(s, i)
    return string.sub(s, 1, place - 1) .. sub .. string.sub(s, place, -1)
end
