# Project Euler Problem #3
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-08-27

require 'prime'

num = 600_851_475_143
i = 3

factors = num % 2 == 0 ? [2] : []
while i <= num / i
  if num % i == 0
    factors << i if Prime.prime? i
  end
  if i < 3
    i += 1
  else
    i += 2
  end
end

answer = factors.last
puts answer

# => 6857
