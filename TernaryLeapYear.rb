puts "enter a year"
y = gets.chomp.to_i

puts (y%400 == 0 || (y%100!=0 && y%4==0)) ?  "is a leap-year": "is not a leap-year"