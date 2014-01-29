#!/usr/bin/ruby
#part 11 - blocks

class CartesianProduct
  include Enumerable
  @setC = []
  def initialize(setA, setB)
    @setA = setA
    @setB = setB
  end

  def each
    @setA.each do |x| 
      @setB.each { |y| yield [x, y] }
    end
  end

end

c = CartesianProduct.new([:a,:b], [4,5])

c.each { |elt| puts elt.inspect }

