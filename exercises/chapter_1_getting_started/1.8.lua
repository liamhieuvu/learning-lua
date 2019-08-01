--[[
Exercise 1.8: Write a simple script that prints its own name without knowing
it in advance.
--]]

filename = debug.getinfo(1).source:gsub('%@', '')
io.stdout:write("The current file name is \"", filename,"\".\n")
print("You can change the file name and run again.")
