--[[
Exercise 7.4: Write a program that prints the last line of a text file. Try to
avoid reading the entire file when the file is large and seekable.
    lua 7.4.lua dump.txt    --> The last line must be printed
--]]

local f = io.open(arg[1], "r")
local len = f:seek("end")
local founded = false

-- f:seek("set", len); f:read(1)        --> nil
-- f:seek("set", len - 1); f:read(1)    --> EOF
for i = len - 2, 0, -1 do
    f:seek("set", i)
    c = f:read(1)
    if c == "\n" then
        founded = true
        break
    end
end

if founded == false then f:seek("set", 0) end
print(f:read("*a"))

f:close()
