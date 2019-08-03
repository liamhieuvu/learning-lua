--[[
Exercise 5.8: The table library offers a function table.concat, which receives
a list of strings and returns their concatenation:

    print(table.concat({"hello", " ", "world"}))    --> hello world

Write your own version for this function.
Compare the performance of your implementation against the built-in version for
large lists, with hundreds of thousands of entries. (You can use a for loop to
create those large lists.)
--]]

function tbconcat(tb_str)
    str = ""
    for _, v in ipairs(tb_str) do
        str = str .. v
    end
    return str
end

io.stdout:write("Creating test data ...")
tb_test = {}
for i = 1, 20000 do
    tb_test[i] = "This is a long string for testing performance of " ..
                 "table concatenation functions.\n"
end
io.stdout:write(" --> OK\n")

-- Benchmark own function
print("Testing written function 'tb_concat' ...")
local x = os.clock()
tbconcat(tb_test)
print(string.format("Elapsed time: %.3f\n", os.clock() - x))

-- Benchmark lib function
print("Testing library function 'table.concat' ...")
local x = os.clock()
table.concat(tb_test)
print(string.format("Elapsed time: %.3f\n", os.clock() - x))
