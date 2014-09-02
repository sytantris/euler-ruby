# Project Euler Problem #16
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-09-01

exponent = 1000
power = 2**exponent
sum = 0
power.to_s.each_char do |c|
  sum += c.to_i
end

puts sum

# => 1366
