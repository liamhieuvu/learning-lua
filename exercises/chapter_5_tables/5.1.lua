--[[
Exercise 5.1: What will the following script print? Explain.
    sunday = "monday"; monday = "sunday"
    t = {sunday = "monday", [sunday] = monday}
    print(t.sunday, t[sunday], t[t.sunday])
--]]

print("Output:", "monday", "sunday", "sunday", "\n");

--[[ Add '-' at the beginning of line to see the actual result
sunday = "monday"; monday = "sunday"
t = {sunday = "monday", [sunday] = monday}
print(t.sunday, t[sunday], t[t.sunday])
--]]

print([[The script below

    sunday = "monday"; monday = "sunday"
    t = {sunday = "monday", [sunday] = monday}
    print(t.sunday, t[sunday], t[t.sunday])

is equivalent with

    t = {["sunday"] = "monday", ["monday"] = "sunday"}
    print(t["sunday"], t["monday"], t["monday"])
]])
