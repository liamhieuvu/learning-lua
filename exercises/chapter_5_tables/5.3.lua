--[[
Exercise 5.3: Suppose that you want to create a table that maps each escape
sequence for strings (the section called “Literal strings”) to its meaning.
How could you write a constructor for that table?
--]]

esc_seq =
{
    bell = "\a",
    back_space = "\b",
    form_feed = "\f",
    newline = "\n",
    carriage_return = "\r",
    hor_tab = "\t",
    ver_tab = "\v",
    backslash = "\\",
    double_quote = "\"",
    single_quote = "\'"
}

print([[
esc_seq =
{
    bell = "\a",
    back_space = "\b",
    form_feed = "\f",
    newline = "\n",
    carriage_return = "\r",
    hor_tab = "\t",
    ver_tab = "\v",
    backslash = "\\",
    double_quote = "\"",
    single_quote = "\'"
}]])
