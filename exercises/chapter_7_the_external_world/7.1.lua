--[[
Exercise 7.1: Write a program that reads a text file and rewrites it with its
lines sorted in alphabetical order. When called with no arguments, it should
read from standard input and write to standard output. When called with one
file-name argument, it should read from that file and write to standard output.
When called with two file-name arguments, it should read from the first file and
write to the second.
    lua 7.1.lua     --> input some lines and press crtl+d (POSIX)
    lua 7.1.lua dump.txt
    lua 7.1.lua dump.txt arbitrary_file
--]]

-- for input and output filename
if arg[1] ~= nil then
    io.input(arg[1])
    if arg[2] ~= nil then
        io.output(arg[2])
    end
end

local lines = {}

-- read the lines in table 'lines'
for line in io.lines() do
    lines[#lines + 1] = line
end

-- sort
table.sort(lines)

-- write all the lines
print("--------------------------------------------------------------")
print("Write sorted result to " .. (arg[2] or "standard output") .. " ...")
print("--------------------------------------------------------------")
for _, l in ipairs(lines) do
    io.write(l, "\n")
end
