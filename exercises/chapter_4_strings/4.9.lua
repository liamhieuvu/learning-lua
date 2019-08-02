--[[
Exercise 4.9: Redo the previous exercise for UTF-8 strings.
    > ispali("a ç,.ã   ça.")    --> true
    > ispali("açãa")            --> false
--]]

function ispali(s)
    s = remove_space_and_punc(s)
    if s == utf8_reverse(s) then
        return true
    end
    return false
end

function is_space_or_punc(c)
    punc = {' ', '.' , ',' , ';' , ':', '?' , '!' , '"' , '\'' , ')' , '('}
    for i = 1, #punc do
        if punc[i] == c then return true end
    end
    return false
end

function remove_space_and_punc(s)
    new_s = ""
    for i = 1, utf8.len(s) do
        -- Extract the i-th character
        byte_first = utf8.offset(s, i)
        byte_last = utf8.offset(s, i + 1) and
                    utf8.offset(s, i + 1) - 1 or string.len(s)
        c = string.sub(s, byte_first, byte_last)

        -- Remove this character if it is space or punctuation
        if is_space_or_punc(c) == false then
            new_s = new_s .. c
        end
    end
    return new_s
end

function utf8_reverse(s)
    new_s = ""

    -- Reverse scan
    for i = utf8.len(s), 1, -1 do
        -- Extract the i-th character
        byte_first = utf8.offset(s, i)
        byte_last = utf8.offset(s, i + 1) and
                    utf8.offset(s, i + 1) - 1 or string.len(s)
        c = string.sub(s, byte_first, byte_last)

        -- Append character
        new_s = new_s .. c
    end
    return new_s
end
