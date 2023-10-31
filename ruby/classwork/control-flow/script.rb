=begin
Aden Ahmed
Mustafe H
=end

# 1. Create an if/else statement. Make sure to include at least one elsif. Each branch of the statement should print something to the console.

if 2 > 3
    print "This will not print"
elsif 2 > 1
    print "This will print"
else 
    print "this"
end
# 2. Create an unless statement. The statement should print something to the console.

unless 2 < 3
    print "this will not print"
else
    print "this will print"
end

# 3. We’re letting you know what value (true or false) we want each variable to have, and your job is to add an expression that evaluates to the correct value using comparators.

# test_1 should be false
test_1 = 5 > 8

# test_2 = should be false
test_2 = 8 <= 7

# test_3 = should be true
test_3 = 1 < 2

# 4. Booleans: The code below indicates what value (true or false) we want each variable to have, and your job is to add an expression that evaluates to the correct value using boolean operators (&&, ||, or !).


# test_1 should be true
test_1 = 3 < 4 || true

# test_2 = should be true
test_2 = !false && true

# test_3 = should be false
test_3 = 3 != 3
