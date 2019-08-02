--[[
Exercise 3.6: Write a function to compute the volume of a right circular cone,
given its height and the angle between a generatrix and the axis.
--]]

h = 1
r = 2

io.stdout:write("Input the height (m): ")
h = io.stdin:read 'n'

io.stdout:write("Input the angle between a generatrix and the axis (degree): ")
angle = io.stdin:read 'n'
r = h * math.tan(math.rad(angle))

volume = 1.0 / 3.0 * math.pi * r^2 * h
print("The volume of the given right circular cone is "..volume.." (m^3).")
