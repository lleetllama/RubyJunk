# find all permutations of a sting

puts "provide input to check"
seed = gets.chomp.split(//).permutation.to_a #split string on each character and stuff all permutaitions in arrays

seed.each do |arr|
  puts arr.join 
end

