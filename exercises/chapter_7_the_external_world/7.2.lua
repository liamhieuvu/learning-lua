--[[
Exercise 7.2: Change the previous program so that it asks for confirmation if
the user gives the name of an existing file for its output.
    lua 7.2.lua     --> input some lines and press crtl+d (POSIX)
    lua 7.2.lua dump.txt
    lua 7.2.lua dump.txt arbitrary_file
--]]

-- for input and output filename
if arg[1] ~= nil then
    if arg[2] ~= nil then
        f = io.open(arg[2])
        if f ~= nil then
            io.write("Output file is existed. Override? [y/n]: ")
            confirm = io.read()
            if confirm ~= "y" then return end
        end
        io.output(arg[2])
    end
    io.input(arg[1])
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
