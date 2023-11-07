# Read text from a file
def read_text_from_file(filename)
    File.read(filename)
end

=begin 
 try using Ruby methods
 it's similar to using a function in js
 look up function/method `read_text_from_file` as an example
 structure: 
 def method_name
    logic of method goes in here
 end

=end

# logic for text_analyzer requirments go here:

#method to count words
def count_words(text)
    words = text.scan(/\b\w+\b/)
    words.length
end
#method count char
def count_char(text)
    text.length
end
#method count para
def count_para(text)
    para = text.split("\n\n")
    para.size
end

def most_common_word(text)
    words = text.scan(/\b\w+\b/)

    word_frequency = Hash.new(0)

    words.each do |word|
        word_frequency[word.downcase] += 1
    end
    
    most_common = word_frequency.max_by{ |word, frequency| frequency}
    most_common
end

def word_frequency_stats(text)
    words = text.scan(/\b\w+\b/)

    word_frequency = Hash.new(0)

    words.each do |word|
        word_frequency[word.downcase] += 1
    end

    sorted_word_frequency = word_frequency.sort_by { |word, frequency| -frequency}
    sorted_word_frequency[0...10]
end
# Analyze the sample text
filename = 'sample.txt' # Replace with your text file
text = read_text_from_file(filename)

# use `text` ^ to pass as a parameters to your methods
most_common_word, most_common_frequency = most_common_word(text)
top_words = word_frequency_stats(text)
# puts statements to console go here:
puts "Word Count: #{count_words(text)}"
puts "Character Count: #{count_char(text)}"
puts "Paragraph Count: #{count_para(text)}"
puts "Most Common Word: '#{most_common_word}' (Appears #{most_common_frequency} times)"
top_words.each do |word, frequency|
    puts "'#{word}' - #{frequency} times"
end

# if ARGV.length == 1
#     filename = ARGV[0]
#     puts filename
#     puts ARGV
#     method_name(filename)
# end