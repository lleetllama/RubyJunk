# determine if year is leapyear without using built in library functions

puts "enter a year to test"
test_year = gets.to_i

if test_year%400 == 0 || (test_year%100!=0 && test_year%4 == 0)
  puts "#{test_year} is a leap year"
else 
  puts "#{test_year} is not a leap year"
end