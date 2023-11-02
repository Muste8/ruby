# TASK ONE
# Create an array of fruits & add solution
fruits = ["apple", "banana", "cherry", "date", "fig", "grape"]

# Print the entire array.
print fruits #  => ["apple", "banana", "cherry", "date", "fig", "grape"]

# Print the first and last elements of the array.
print "First: #{fruits[0]} & Last: #{fruits[-1]}" #  => First: apple & Last: grape 

# Add "kiwi" to the end of the array.
fruits.push("kiwi") #  => ["apple", "banana", "cherry", "date", "fig", "grape", "kiwi"]

# Remove "cherry" from the array.
fruits.delete("cherry") #  => "cherry" 

# Print the modified array.
print fruits #  => ["apple", "banana", "date", "fig", "grape", "kiwi"]

# Check if "apple" is in the array and print the result.
print fruits.include? "apple" # => true

# Calculate and print the total number of fruits in the fruits array.
print "Total: #{fruits.length} fruits" # => Total: 6 fruits

#//////////////////STRETCH GOAL///////////////////

# Ask the user to input a fruit, and then check if that fruit is in the array. Print the result.
print "Enter a fruit"
name = gets.chomp # => Pineapple 
name.downcase! #  => "pineapple" 
print fruits.include? name # => false

# Sort the fruits array in alphabetical order and print the sorted list.
print fruits.sort # => ["apple", "banana", "date", "fig", "grape", "kiwi"]

#///////////////////////END////////////////////////

#TASK TWO
# Create a hash for a student & add solution
student = {
    "name" => "John Smith",
    "age" => 25,
    "major" => "Computer Science"
}
print student # {"name"=>"John Smith", "age"=>25, "major"=>"Computer Science"}

# Print only the value associated with the "name" key.
print student["name"] # John Smith

# Add a new key-value pair to the hash: "gpa" => 3.7.
student["gpa"] = 3.7 

# Update the "age" value to 26.
student["age"] = 26

# Print the modified hash.
print student # => {"name"=>"John Smith", "age"=>26, "major"=>"Computer Science", "gpa"=>3.7} 

# Check if the hash contains a key "gender" and print the result.
print student["gender"] # => nil

#//////Stretch Goal: Combining Arrays and Hashes///////

#Create a new array called students that contains multiple student hashes (e.g., data for multiple students).

students = [
  {
    "name" => "John Smith",
    "age" => 25,
    "major" => "Computer Science"
  },
  {
    "name" => "Jane Doe",
    "age" => 23,
    "major" => "Engineering"
  },
  {
    "name" => "Aden Ahmed",
    "age" => 22,
    "major" => "Math"
  }
]

#Use a loop to print the name and major of each student in the students array.

students.each { |sub|
  puts "Name: #{sub["name"]}, Major: #{sub["major"]}"
}

#//////////////////////////END////////////////////////////