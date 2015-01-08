require_relative 'unique_string'
=begin
This method will take any string, and compress the string down to only mentioning
a character, and a preceding count of that character.
EX: aabcccccaaa => a2b1c5a3
If the entered string has no duplicates, the original string will be displayed
=end

def string_compression(str)
  histogram = {}
  if unique_characters?(str)
    puts str
  else
    str.split('').sort.each do |char|
      if histogram.has_key? char
        histogram[char] = histogram[char] + 1
      else
        histogram[char] = 1
      end
    end
  end
  histogram.sort.each do |key, quantity|
    print "#{key}#{quantity}"
  end
end

str = "Jasson"

string_compression(str)