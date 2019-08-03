--[[
Exercise 5.7: Write a function that inserts all elements of a given list into
a given position of another given list.
    src = {"a", "b", "c"}
    dst = {1, 2, 3, 4, 5}
    insert_list(src, dst, 3)
    for _, v in ipairs(dst) do io.stdout:write(v .. "\t") end
    print()
    --> 1, 2, "a", "b", "c", 3, 4, 5
--]]

function insert_list(src, dst, idx)
    table.move(dst, idx, #dst, idx + #src)
    table.move(src, 1, #src, idx, dst)
end
