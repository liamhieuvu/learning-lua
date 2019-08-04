--[[
Exercise 6.5: Write a function that takes an array and prints all combinations
of the elements in the array. (Hint: you can use the recursive formula for
combination: C(n,m) = C(n -1, m -1) + C(n - 1, m). To generate all C(n,m)
combinations of n elements in groups of size m, you first add the first element
to the result and then generate all C(n - 1, m - 1) combinations of the
remaining elements in the remaining slots; then you remove the first element
from the result and then generate all C(n - 1, m) combinations of the remaining
elements in the free slots. When n is smaller than m, there are no combinations.
When m is zero, there is only one combination, which uses no elements.)
--]]

-- Generate combinations of first n elements of arr in group of size m
-- Return the table of all combinations
-- Return pattern { {Comb. 1}, {Comb. 2}, {Comb. 3}, ... }
function combinations(arr, m)
    --print(m, ',', #arr, ',', table.unpack(arr))
    if m > #arr then return nil end
    if (m == 0) then return {{}} end

    local pin_value = arr[1]
    local new_arr = {}
    table.move(arr, 2, #arr, 1, new_arr)

    -- Generate (n - 1, m - 1)
    local return_tb = combinations(new_arr, m - 1)
    for _, v in ipairs(return_tb) do
        table.insert(v, 1, pin_value)
    end

    -- Generate (n - 1, m)
    temp = combinations(new_arr, m)
    if temp ~= nil then
        for _, v in ipairs(temp) do
            table.insert(return_tb, v)
        end
    end
    return return_tb
end

function print_all_combinations(arr)
    for i = 0, #arr do
        for _, v in ipairs(combinations(arr, i)) do
            print(table.unpack(v))
        end
    end
end

print_all_combinations({1, 2, 3, 4})
