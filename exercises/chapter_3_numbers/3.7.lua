--[[
Exercise 3.7: Using math.random, write a function to produce a pseudo-random
number with a standard normal (Gaussian) distribution.
--]]

print(
[[Convert uniform distribution to standard normal distribution by using
Box–Muller transform

Reference: https://en.wikipedia.org/wiki/Box–Muller_transform
]])

function randn_boxmuller()
    u = 0
    v = 0

    -- Converting [0,1) to (0,1)
    while u == 0 do u = math.random() end
    while v == 0 do v = math.random() end

    return math.sqrt( -2.0 * math.log(u)) * math.cos(2.0 * math.pi * v)
end

print("Trying to create some random numbers with normal distribution ...")
for i = 1, 10 do print(randn_boxmuller()) end
