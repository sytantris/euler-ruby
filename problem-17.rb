# Project Euler Problem #17
# Solved by: Sytantris Dyat
# Language: Ruby 2.0
# Date: 2014-09-01

def return_word number
  small = %w(zero one two three four five six seven eight nine ten eleven twelve
             thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty)
  large = %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)

  if number <= 20
    return small[number]
  elsif number > 20 and number < 100
    q, r = number.divmod(10)
    string = large[q] + (r == 0 ? '' : small[r])
    return string
  elsif number >= 100 and number < 1000
    q, r = number.divmod(100)
    string = small[q] + ' hundred'
    string += ' and ' + return_word(r) if r > 0
    return string
  else
    return 'one thousand'
  end
end

number = 1000
letters = 0
1.upto(number) do |i|
  letters += return_word(i).gsub(' ', '').gsub('-', '').length
end

answer = letters
puts answer

#=> 21124
