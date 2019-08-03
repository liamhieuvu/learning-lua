--[[
Exercise 5.2: Assume the following code:
    a = {}; a.a = a
What would be the value of a.a.a.a? Is any a in that sequence somehow different
from the others? Now, add the next line to the previous code:
    a.a.a.a = 3
What would be the value of a.a.a.a now?
--]]

print([[
The operation "a.a = a" adds new field "a" to the table "a". This is recursion.
The value of "a.a.a.a" is its type including its address, "table: {address}".
Any "a" in that sequence has the same result, because they all are table "a".
If we assign "a.a.a.a" to 3, "a" becomes a number. A number does not have any
fields (indexes), so "a.a.a.a" is an invalid expression.
]])
