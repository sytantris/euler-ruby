# Project Euler Problem #20
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-09-03

def factorial num
  product = 1
  num.downto(2) do |n|
    product *= n
  end
  return product
end

def digit_sum num
  sum = 0
  q = num
  while q > 0
    q, r = q.divmod(10)
    sum += r
  end
  return sum
end

answer = digit_sum factorial(100)
puts answer

# => 648
