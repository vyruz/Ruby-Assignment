#!/usr/bin/ruby
#part 3

def count_words(input)
  h = Hash.new(0)
  input.scan(/\w+/) do |w|
    h[w] += 1
  end
  return h
end


