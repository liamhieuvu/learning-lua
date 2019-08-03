--[[
Exercise 5.6: Write a function to test whether a given table is a valid
sequence.
    is_seq({1, 3, 7, "a", "b"})         --> true
    is_seq({[-1] = 3, 1, 8, 4})         --> false
    is_seq({a = 3, b = 6, 4, 2})        --> false
    is_seq({[1] = 2, [2] = 3, [4] = 4}) --> false
    is_seq({[3] = 3, [4] = 1, [5] = 2}) --> false
--]]

function is_seq(a)
    max_idx = 1
    for k, _ in pairs(a) do
        -- Check if there are any indexes that do not belong to number type
        if type(k) ~= "number" then return false end

        -- Check if the index is smaller than 1
        if k < 1 then return false end

        -- Get the maximum index
        max_idx = max_idx < k and k or max_idx
    end

    -- Check if there are any holes
    for i = 1, max_idx do
        if a[i] == nil then return false end
    end

    -- Pass all checks
    return true
end
