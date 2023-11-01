#list of words

words = ["level", "elephant", "madam", "ruby", "book", "racecar", "hello", "dad"]

x = words.length

for num in 0...x
    if words[num] == words[num].reverse #checks for palindrome
        puts "Word: #{words[num]}"
        puts "- Palindrome: Yes"
        if words[num].include? "e" #checks if word has "e"
            puts "- Contains 'e': Yes"
        else
            puts "- Contains 'e': No"
        end
        puts "- Character Count: #{words[num].length}" #.length returns the number of characters
        if words[num].include? "ruby"
            puts "- After Replacement: #{words[num].gsub!("ruby", "python")}" #this replaces "ruby" with "python"
        else
            puts "- After Replacement: #{words[num]}"
        end
        puts "" # I'm using this as a line break!
    else
        puts "Word: #{words[num]}"
        puts "- Palindrome: No"
        if words[num].include? "e" #checks if word has "e"
            puts "- Contains 'e': Yes"
        else
            puts "- Contains 'e': No"
        end
        puts "- Character Count: #{words[num].length}" #.length returns the number of characters
        if words[num].include? "ruby"
            puts "- After Replacement: #{words[num].gsub!("ruby", "python")}" #this replaces "ruby" with "python"
        else
            puts "- After Replacement: #{words[num]}"
        end
        puts "" # I'm using this as a line break!
    end
end

            