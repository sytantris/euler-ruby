# Project Euler Problem #12
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-08-30

def get_factors num
  i = 1
  divisors = 2
  while i <= num / i
    if num % i == 0
      divisors += 2
    end
    i += 1
  end
  return divisors
end

puts "Calculating..."

i = 1
number = nil
tri = 0
tri_prev = 0

while true
  tri += i
  i += 1

  number = get_factors(tri)
  if number >= 500
    answer = tri
    break
  end
end

puts answer

# => 76576500
