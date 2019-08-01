--[[
Exercise 2.2: An alternative implementation for the eight-queen problem would
be to generate all possible permutations of 1 to 8 and, for each permutation,
to check whether it is valid. Change the program to use this approach. How does
the performance of the new program compare with the old one? (Hint: compare the
total number of permutations with the number of times that the original program
calls the function isplaceok.)
--]]

N = 8 -- board size
-- check whether position (n,c) is free from attacks
function isplaceok (a, n, c)
    for i = 1, n - 1 do -- for each queen already placed
        if (a[i] == c) or           -- same column?
           (a[i] - i == c - n) or   -- same diagonal? line eq.: x + y = const
           (a[i] + i == c + n) then -- same diagonal? line eq.: x - y = const
            return false -- place can be attacked
        end
    end
    return true -- no attacks; place is OK
end

-- print a board
function printsolution (a)
    for i = 1, N do     -- for each row
        for j = 1, N do -- and for each column
            -- write "X" or "-" plus a space
            io.stdout:write(a[i] == j and "X" or "-", " ")
        end
        io.stdout:write("\n")
    end
    io.stdout:write("\n")
end

-- add to board 'a' all queens from 'n' to 'N'
function addqueen (a, n)
    if n > N then -- all queens have been placed?
        --printsolution(a)
        old_solution_cnt = old_solution_cnt + 1
    else -- try to place n-th queen
        for c = 1, N do
            old_check_cnt = old_check_cnt + 1
            if isplaceok(a, n, c) then
                a[n] = c -- place n-th queen at column 'c'
                addqueen(a, n + 1)
            end
        end
    end
end

function addqueen_perm(a, size)
    if size == 0 then
        --printsolution(a)
        new_solution_cnt = new_solution_cnt + 1
    else
        for c = N - size + 1, N do
            -- put c-th element as the first one of the current array
            a[c], a[N - size + 1] = a[N - size + 1], a[c]

            new_check_cnt = new_check_cnt + 1

            -- only scan the next permutation if the current position
            -- a[N - size + 1] is ok
            if isplaceok(a, N - size + 1, a[N - size + 1]) then
                -- scan the next permutations (exclude the current 1st element)
                addqueen_perm(a, size - 1)
            end

            -- restore c-th element
            a[c], a[N - size + 1] = a[N - size + 1], a[c]
        end
    end
end

-- run the program
old_solution_cnt = 0
new_solution_cnt = 0
old_check_cnt = 0
new_check_cnt = 0
addqueen({}, 1)
addqueen_perm({1, 2, 3, 4, 5, 6, 7, 8}, N)
io.stdout:write(string.format("%-15s | %-15s | %s\n", "",
                "Solution count", "Check times"))
io.stdout:write(string.format("%-15s | %-15d | %d\n", "Loop all",
                old_solution_cnt, old_check_cnt))
io.stdout:write(string.format("%-15s | %-15d | %d\n", "Permutation",
                new_solution_cnt, new_check_cnt))
