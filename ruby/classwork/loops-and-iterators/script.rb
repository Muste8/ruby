=begin
Write a program that prints the numbers from 1 to 20. For each number, if it is even, print "Even," and if it is odd, print "Odd."
1. Use a `while` loop
2. Use a `for` loop
** avoid infinite loops**
=end

#1 while

num = 1

while num < 21
    if num % 2 == 0
        puts "#{num} is Even"
    else
        puts "#{num} is Odd"
    end
    num += 1
end



#2 if loop
for num in 1..20
    if num % 2 == 0
        puts "#{num} is Even"
    else
        puts "#{num} is Odd"
    end
end