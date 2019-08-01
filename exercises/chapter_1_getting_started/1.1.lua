--[[
Exercise 1.1: Run the factorial example. What happens to your program if you
enter a negative number? Modify the example to avoid this problem.
--]]

-- defines a factorial function
function fact (n)
    if n < 0 then
        print("invalid argument")
        return;
    end
    if n == 0 then
        return 1
    else
        return n * fact(n-1)
    end
end

print("enter a number:")
a = io.read("*n") -- reads a number
print(fact(a))
