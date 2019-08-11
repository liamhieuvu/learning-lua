--[[
Exercise 7.6: Using os.execute and io.popen, write functions to create a
directory, to remove a directory, and to collect the entries in a directory.
--]]

-- Implement for POSIX
function createdir(dir)
    return os.execute("mkdir " .. dir)
end

function rmdir(dir)
    return os.execute("rm -rf " .. dir)
end

function lsdir(dir)
    return os.execute("ls " .. dir)
end

-- os.execute and io.popen are the same if there is no need to command output
