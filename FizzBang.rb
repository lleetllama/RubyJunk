=begin
Good'ol fizz buzz math game.
Runs an inclusive loop 1 to 50 
script will output the string "Fizz" for multiples of 3 and "buzz" for multiples of 5
if the integer is multiple of both it will output "Fizz Bang".
Just outputs the integer if no other criteria is met.
=end

(1..50).each do |x|
  if x%3 == 0 && x%5 == 0
    puts "Fizz Buzz"
  elsif x%3 == 0
  puts "Fizz"
  elsif x%5 == 0
  puts "Buzz"
else
  puts x
end
end