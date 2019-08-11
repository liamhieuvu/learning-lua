--[[
Exercise 7.3: Compare the performance of Lua programs that copy the standard
input stream to the standard output stream in the following ways:
    - byte by byte;
    - line by line;
    - in chunks of 8 kB;
    - the whole file at once.
For the last option, how large can the input file be?
--]]

function copyio(input, output, n)
    local fin = io.open(input, "r")
    local fout = io.output(output, "w")

    if n ~= nil then
        for block in fin:lines(n) do
            fout:write(block)
        end
    else
        for block in fin:lines() do
            fout:write(block)
        end
    end

    fin:close()
    fout:close()
end

-- Benchmark 'byte by byte' copy
print("Copying byte by byte ...")
local x = os.clock()
copyio(arg[1], "copytest" .. x, 1)
print(string.format("Elapsed time: %.3f\n", os.clock() - x))

-- Benchmark 'line by line' copy
print("Copying line by line ...")
local x = os.clock()
copyio(arg[1], "copytest" .. x)
print(string.format("Elapsed time: %.3f\n", os.clock() - x))

-- Benchmark 8kb copy
print("Copying each 8kb ...")
local x = os.clock()
copyio(arg[1], "copytest" .. x, 2^13)
print(string.format("Elapsed time: %.3f\n", os.clock() - x))

-- Benchmark whole file copy
-- The maximum size is depend on Lua limit and the host
print("Copying whole file ...")
local x = os.clock()
local fin = io.open(arg[1], "r")
local fout = io.open("copytest" .. x, "w")
str = fin:read("*a")
fout:write(str)
fin:close()
fout:close()
print(string.format("Elapsed time: %.3f\n", os.clock() - x))

---[[
os.execute("rm copytest*")
--]]
