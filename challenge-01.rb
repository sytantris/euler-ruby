# Euler Problem #1
# Solved by: Sytantris Dyat
# Language: Ruby 2.0

answer = (1...1000).map do |i|
  i if i % 3 == 0 or i % 5 == 0
end.compact.reduce(:+)

puts answer

# => 233168
