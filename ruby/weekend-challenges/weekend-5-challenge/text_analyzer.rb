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

# Analyze the sample text
filename = 'sample.txt' # Replace with your text file
text = read_text_from_file(filename)

# logic for text_analyzer requirments go here:
# Character count
char_count = text.length
puts "Character count: #{char_count}"

# Word count
words = text.split(" ")
total_words = words.length
puts "Word count: #{total_words}"

# Paragraph count
paragraphs = text.split(/\n\n/) #used regex linebreaks to find the paragraph count
paragraph_count = paragraphs.length
puts "Paragraph count: #{paragraph_count}"

# Count occurrences of each word
word_occurrence = Hash.new(0)
words.each do |word|
  word_occurrence[word.upcase] += 1
end

# Get the top 10 most recurring words
top_words = word_occurrence.sort_by { |word, count| -count }.first(10)
=begin 
  This sorts the count from highest to lowest
  and only returns the first ten. 
  Interestingly, when you sort a hash
  it gives you an array with in an array.
=end
puts "Most common word: '#{top_words[0][0]}' appears #{top_words[0][1]} times"
puts "Top 10 most common words:"
top_words.each_with_index do |(word, count), index|
  puts "#{index + 1}. '#{word}' - #{count} times"
end


