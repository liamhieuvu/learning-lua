--[[
Exercise 3.1: Which of the following are valid numerals? What are their values?
    .0e12   .e12   0.0e   0x12   0xABFG   0xA   FFFF   0xFFFFFFFF
    0x   0x1P10   0.1e1   0x0.1p1
--]]

print(string.format("%-10s | %-5s | Decimal value", "Expression", "Valid"))
print(string.format("%-10s | %-5s | %d", ".0e12", "yes", .0e12))
print(string.format("%-10s | %-5s | N/A", ".e12", "no"))
print(string.format("%-10s | %-5s | N/A", "0.0e", "no"))
print(string.format("%-10s | %-5s | %d", "0x12", "yes", 0x12))
print(string.format("%-10s | %-5s | N/A", "0xABFG", "no"))
print(string.format("%-10s | %-5s | %d", "0xA", "yes", 0xA))
print(string.format("%-10s | %-5s | N/A", "FFFF", "no"))
print(string.format("%-10s | %-5s | %d", "0xFFFFFFFF", "yes", 0xFFFFFFFF))
print(string.format("%-10s | %-5s | N/A", "0x", "no"))
print(string.format("%-10s | %-5s | %d", "0x1P10", "yes", 0x1P10))
print(string.format("%-10s | %-5s | %d", "0.1e1", "yes", 0x1e1))
print(string.format("%-10s | %-5s | %f", "0x0.1p1", "yes", 0x0.1p1))
