# Project Euler Problem #2
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-08-27

fibonacci = [1, 2]
max = 4_000_000

while fibonacci.last <= max
  length = fibonacci.length
  fibonacci << fibonacci[length - 1] + fibonacci[length - 2]
end

fibonacci.reject! do |i|
  i > max
end

fibonacci = fibonacci.partition do |i|
  i.even?
end

answer = fibonacci.first.reduce(:+)
puts answer

# => 4613732
