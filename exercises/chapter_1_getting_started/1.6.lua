--[[
Exercise 1.6: How can you check whether a value is a Boolean without using the
function type?
--]]

print("Run Lua interpreter, dofile this file, and run check_boolean()")
function check_boolean(x)
	if x == false or x == true then
		print("This is a Boolean value")
	else
		print("This is not a Boolean value")
	end
end
