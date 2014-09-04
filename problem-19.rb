# Project Euler Problem #19
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-09-03

require 'date'

year = 1901
sundays = 0
while (year < 2001)
  month = 1
  while (month <= 12)
    date = Date.new(year, month, 1)
    sundays += 1 if date.sunday?
    month += 1
  end
  year += 1
end

answer = sundays
puts answer

# => 171
