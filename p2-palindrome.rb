#!/usr/bin/ruby

#part 2

def palindrome?(string)
  temp = string.downcase.gsub(/[^a-zA-Z]/, '') # remove anything except letters
  temp.reverse === temp
end

puts "enter string.."
input = gets.chomp
puts palindrome?(input)
