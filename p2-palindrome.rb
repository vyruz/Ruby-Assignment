#!/usr/bin/ruby

#part 2

def palindrome?(string)
  stripped = string.downcase
  stripped = stripped.gsub(/[^a-zA-Z]/, '')
  puts stripped
  reversed = stripped.reverse
  isSame = stripped==reversed
  puts isSame
  return isSame    
end

puts "enter string.."
input = gets.chomp
palindrome?(input)
