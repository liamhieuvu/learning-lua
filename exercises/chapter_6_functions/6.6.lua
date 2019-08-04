--[[
Exercise 6.6: Sometimes, a language with proper-tail calls is called properly
tail recursive, with the argument that this property is relevant only when we
have recursive calls. (Without recursive calls, the maximum call depth of a
program would be statically fixed.)

Show that this argument does not hold in a dynamic language like Lua: write a
program that performs an unbounded call chain without recursion. (Hint: see the
section called “Compilation”.)
--]]

--[[
A tail call is a subroutine call performed as the final action of a procedure.
If a tail call might lead to the same subroutine being called again later in the
call chain, the subroutine is said to be tail-recursive, which is a special case
of recursion. So, It is not neccessary that tail cail is using in cases of
recursion.

In Lua 5.3, `load(ld)` loads a chunk. And if ld is a function,  load calls it
repeatedly to get the chunk pieces. Each call to ld must return a string that
concatenates with previous results. A return of an empty string, nil, or no
value signals the end of the chunk.

Since `load` will repeatedly calls a function, we can use it to build
an unbounded call chain with random numbers.
--]]

n = 1000

function f()
  n = n - 1
  if n < 0 then
    return nil
  else
    return "i = n;"
  end
end

load(f)()
