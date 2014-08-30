# Project Euler Problem #10
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-08-29

require 'prime'

puts "Calculating..."

primes = []
Prime.each(2_000_000) do |prime|
  primes << prime
end

answer = primes.reduce(:+)
puts answer

# => 142913828922
