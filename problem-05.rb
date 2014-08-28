# Project Euler Problem #5
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-08-28

def check_value num
  2.upto(20) do |i|
    return false if num % i != 0
  end
  return true
end

puts 'Calculating...'
num = 20
while true
  break if check_value num
  num += 20
end

answer = num
puts answer

# => 232792560
