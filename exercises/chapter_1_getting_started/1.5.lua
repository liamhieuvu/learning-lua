--[[
Exercise 1.5: What is the value of the expression type(nil) == nil? (You can
use Lua to check your answer.) Can you explain this result?
--]]

io.stdout:write("The value of the expression type(nil) == nil is ",
                tostring(type(nil) == nil))
print(" because \"nil\" is a nil type value, and type(nil) is a string.")
