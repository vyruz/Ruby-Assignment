#!/usr/bin/ruby
#part 3

def count_words(input)
  h = Hash.new(0)
  input.scan(/\w+/) do |w| #groups of word characters [0-9A-Za-z]
    h[w] += 1
  end
  return h
end


input = "This is a test string to count the words of this string."
puts count_words(input)

