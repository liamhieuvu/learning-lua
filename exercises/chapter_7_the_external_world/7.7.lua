--[[
Exercise 7.7: Can you use os.execute to change the current directory of your
Lua script? Why?
--]]

os.execute("cd .. & ls")

--[[
On Unix, os.execute() spawns a child process and its children. In the above
script, the first process would execute the shell.

The directory change operation only affects the child process, not the process
in which the Lua interpreter is executing this program.
--]]
