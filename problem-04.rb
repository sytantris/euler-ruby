# Project Euler Problem #4
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-08-27

def is_palindrome? number
  number = number.to_s
  return true if number.length <= 1

  i = 0
  if number[i] == number[number.length - 1 - i]
    return is_palindrome? number[i + 1..(number.length - 1 - (i + 1))]
  end

  return false

end


starting = 999
factors = [starting, starting]
i = -1

products = []
while factors[0] > 0
  i += 1
  factors[1] = starting - i

  while factors[1] > 0
    product = factors[0] * factors[1]
    products << product if is_palindrome? product
    factors[1] -= 1
  end
  factors[0] -= 1
end

puts answer = products.max

# => 906609
