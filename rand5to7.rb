test = 0

def rand5
  rand(1..5)
end

until test >= 24
  test = 5 * rand5 + rand5
end
  
test = test-23

puts test