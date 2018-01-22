#find out if a word or phrase is a palindrome

puts "Input word to test"
test_word = gets.chomp

# method to strip out non-characters, and downcase
def wordprep(word)
  return word.gsub(/\W/,'').downcase
end

if wordprep(test_word) == wordprep(test_word).reverse
  puts "#{test_word} is a palindrome"
else
  puts "#{test_word} is not a palindrome"
end