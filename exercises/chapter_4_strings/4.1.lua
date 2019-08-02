--[=[
Exercise 4.1: How can you embed the following fragment of XML as a string in a
Lua program?
    <![CDATA[
        Hello world
    ]]>

Show at least two different ways.
--]=]

print("Method 1: use \"\" and \\n")
print("<![CDATA[\n    Hello world\n]]>")

print("\n Method 2: use [=[ and ]=]")
print([=[<![CDATA[
    Hello world
]]>]=])
