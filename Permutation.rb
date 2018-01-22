#script that finds out if words are permutations of each other

puts "Input first word"
first_word = gets.chomp
  
puts "Input second word"
second_word = gets.chomp

# method to strip non-word characters, downcase them and sort them alphabetically so they can be compared
def wordprep(word)
  return word.gsub(/\W/,'').downcase.chars.sort.join
end

if wordprep(first_word) == wordprep(second_word)
  puts "#{first_word} is a permutation of #{second_word}"
end