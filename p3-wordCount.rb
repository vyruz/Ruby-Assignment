#!/usr/bin/ruby
#part 3

def count_words(input)
  h = Hash.new(0)
  input.scan(/\w+/) do |w| #groups of word characters [0-9A-Za-z]
    h[w] += 1
  end
  return h
end

input = gets.chomp
puts count_words(input)

