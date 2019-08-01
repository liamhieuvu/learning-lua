--[[
Exercise 1.7: Consider the following expression:
    (x and y and (not z)) or ((not y) and x)
Are the parentheses necessary? Would you recommend their use in that expression?
--]]

print("The precedence: not > and > or")
print("The parentheses around 'not' are not necessary, but the other are.")
print(
[[When in doubt, always use explicit parentheses. It is easier than looking it
up in the manual and others will probably have the same doubt when reading
your code.]])
