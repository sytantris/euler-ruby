# Project Euler Problem #9
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-08-29

puts "Calculating..."

1.upto(999) do |a|
  2.upto(1000 - a) do |b|
    3.upto(1000 - b - a) do |c|
      if a + b + c == 1000 and c**2 == a**2 + b**2
        answer = a * b * c
        puts answer
        exit
      end
    end
  end
end

# => 31875000
