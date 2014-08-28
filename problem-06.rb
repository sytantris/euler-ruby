# Project Euler Problem #6
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-08-28

max = 100
numbers = 1.upto(max).to_a

sum_squares = numbers.inject do |sum, i|
  sum + i**2
end

square_sums = numbers.reduce(:+)**2

answer = square_sums - sum_squares
puts answer

# => 25164150
