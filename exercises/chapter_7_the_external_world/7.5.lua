--[[
Exercise 7.5: Generalize the previous program so that it prints the last n lines
of a text file. Again, try to avoid reading the entire file when the file is
large and seekable.
    lua 7.5.lua dump.txt 1      --> The last line must be printed
    lua 7.5.lua dump.txt 4      --> The 4 last line must be printed
--]]

local f = io.open(arg[1], "r")
n = tonumber(arg[2]) or 1
cnt =  0
founded = false
local len = f:seek("end")

-- f:seek("set", len); f:read(1)        --> nil
-- f:seek("set", len - 1); f:read(1)    --> EOF
for i = len - 2, 0, -1 do
    f:seek("set", i)
    c = f:read(1)
    if c == "\n" then
        cnt = cnt + 1
        if cnt == n then
            founded = true
            break
        end
    end
end

if founded == false then f:seek("set", 0) end
print(f:read("*a"))
f:close()
