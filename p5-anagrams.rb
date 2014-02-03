#!/usr/bin/ruby

# part 5 

def combine_anagrams(words)
  return words.group_by { |element| element.downcase.chars.sort } #hash of sorted array of characters => words with said chars
  # example ["a", "c", "r", "s"]=>["cabrs", "racs", "scar"]
end



words = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
c = combine_anagrams(words)

puts c, "\n"



