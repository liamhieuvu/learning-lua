# Learning Lua with "Programming in Lua, fourth edition"

## Introduction from lua.org
<p align=justify>
Programming in Lua provides a solid base to any programmer who wants to use Lua.
It covers all aspects of Lua, from the basics to its API with C. The book is the
main source of programming patterns for Lua, with numerous code examples that
help the reader to make the most of Lua's flexibility and powerful mechanisms.
The book is targeted at people with some programming background, but it does not
assume any prior knowledge about Lua or other scripting languages.
</p>

## Install Lua interpreter on Linux
```
$ wget http://www.lua.org/ftp/lua-5.3.5.tar.gz
$ tar zxf lua-5.3.5.tar.gz
$ cd lua-5.3.5
$ make linux test
```

## Install Lua interpreter on Mac OS X
```
$ curl -R -O http://www.lua.org/ftp/lua-5.3.5.tar.gz
$ tar zxf lua-5.3.5.tar.gz
$ cd lua-5.3.5
$ make macosx test
```
## Run exercises
<p align=justify>
Some exercise, such as writting functions, must be run in interactive mode
to see the result. The others can be run in both ways, using and not using
interactive mode.
</p>

1. Not use interactive mode:
```
$ lua exercises/chapter_{x}_{title}/{x}.{y}.lua
```

2. Use interactive mode:
``` 
$ lua -i exercises/chapter_{x}_{title}/{x}.{y}.lua
> -- Calling a specific function
```
