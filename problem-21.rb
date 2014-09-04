# Project Euler Problem #21
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-09-03

require 'prime'

def get_factors num
  factors = [1]
  i = 2
  while i <= num / i
    factors << i << num / i if num % i == 0
    i += 1
  end
  return factors.uniq.sort
end

def sum_factors num
  return get_factors(num).reduce(:+)
end

def is_amicable? num1, num2
  return num1 != num2 && sum_factors(num1) == num2 && sum_factors(num2) == num1
end

max = 10000
amicable = []

sums = []
1.upto(max - 1) do |i|
  sum = sum_factors(i)
  sums[i] = sum if sum < max
end

sums.each_with_index do |sum, i|
  next if sum == nil
  amicable << sum if sums[sum] == i && sum != i
end

answer = amicable.reduce(:+)
puts answer

#=> 31626
