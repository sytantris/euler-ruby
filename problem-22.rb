# Project Euler Problem #22
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-09-03

names = File.read('problem-22-names.txt').split('","')
names[0] = names.first[1..(names.first.length - 1)]
names[names.length - 1] = names.last[0..(names.last.length - 2)]
names.sort!
values = []

names.each_with_index do |name, index|
  total = 0
  name.downcase.each_char do |c|
    total += c.ord - 96
  end
  total *= (index + 1)
  values << total
end

answer = values.reduce(:+)
puts answer

# => 871198282
