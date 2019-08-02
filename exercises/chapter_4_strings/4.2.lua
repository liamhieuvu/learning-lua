--[[
Exercise 4.2: Suppose you need to write a long sequence of arbitrary bytes as
a literal string in Lua. What format would you use? Consider issues like
readability, maximum line length, and size.
--]]

print(
[[Instead, it is better to code arbitrary binary data using numeric escape
sequences either in decimal or in hexadecimal, such as "\x13\x01\xA1\xBB".
However, this poses a problem for long strings, because they would result in
quite long lines. For those situations, we use the escape sequence \z. It will
skip all subsequent space characters in the string until the first non-space
character. For example, the below script will print 'Lua 5.3':
    > print("\x4c\x75\x61\x20\z
            \x35\x2e\x33")]]
)
