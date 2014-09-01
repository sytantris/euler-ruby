# Project Euler Problem #14
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-08-31

sequence = []
max = 0
answer = nil

2.upto(999_999) do |i|
  sequence = [i]

  number = i
  while number != 1
    if number.odd?
      sequence << 3 * number + 1
    else
      sequence << number / 2
    end
    number = sequence.last
  end

  max = sequence.length if sequence.length > max
  answer = i if sequence.length == max
end

puts answer

#=> 837799
