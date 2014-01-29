#!/usr/bin/ruby
#part 10 - palindrome but better

class String
  def palindrome?
    tmp_str = self.downcase.gsub(/[^a-z]/, '')
    tmp_str.reverse == tmp_str
  end
end

module Enumerable
  def palindrome?
    self == self.reverse
  rescue NoMethodError
    self.to_a == self.to_a.reverse
  end
end

puts "foo".palindrome?
  
