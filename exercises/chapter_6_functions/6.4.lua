--[[
Exercise 6.4: Write a function to shuffle a given list. Make sure that all
permutations are equally probable.
    shuffle_lst(1, 2, 3)    --> 1, 3, 2
    shuffle_lst(1, 2, 3)    --> 1, 2, 3
    shuffle_lst(1, 2, 3)    --> 3, 1, 2
--]]

function shuffle_lst(...)
    a = table.pack(...)
    math.randomseed(os.time())

    for i = #a, 1, -1 do
        chosen = math.random(i)
        a[chosen], a[i] = a[i], a[chosen]
    end

    return table.unpack(a)
end
