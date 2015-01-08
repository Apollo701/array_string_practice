=begin
This method will check a string of characters, and make sure there are no repeats.
Each item is turned into it's byte form using each_byte, and stored in a hash.
Each time a new item is in the hash we want to make sure the key doesn't already exist.
if it already exists, the string does not have only unique characters.
=end

def unique_characters? (str)
  #if length of string, is greater then # of unique  ASCII chars, it must not be unique
  false if str.length > 128

  characters = {} #hash for characters
  str.each_byte do |key|
    return false if characters.has_key? key
    characters[key] = true
  end
  true
end