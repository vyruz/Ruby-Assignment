#!/usr/bin/ruby
#part 10 - palindrome but better

class String
  def palindrome?
    tmp_str = self.downcase.gsub(/[^a-z]/, '') # remove anything except letters
    tmp_str.reverse == tmp_str
  end
end

module Enumerable
  def palindrome?
    self == self.reverse
  rescue NoMethodError
    self.to_a == self.to_a.reverse #if unable to reverse convert to array then check
  end
end

puts "foo".palindrome?

arr = [1,2,3,2,1]
arr2 = [arr, [2,4,6,4,2], arr]
puts arr.palindrome?
puts arr2.palindrome? 
