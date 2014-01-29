#!/usr/bin/ruby
#part 9 - currency exchange

class Numeric
  @@currencies = {'dollar' => 1.00, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019} #ie yen => .013 yen/dollar
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub(/s$/,'')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(currency)
    singular_currency = currency.to_s.gsub(/s$/, '') #remove s at end of input
    if @@currencies.has_key?(singular_currency)
      self / @@currencies[singular_currency]
    else
      super
    end 
  end

end

puts "dollar to euro to dollar #{(1.dollars.in(:euros)).euros.in(:dollars)}"
puts "dollar to rupee #{1.dollars.in(:rupees)}"
puts "dollar to yen #{1.dollars.in(:yen)}"
puts "1 euro to yen #{1.euro.in(:yen)}"
puts "5 dollar to yen #{5.dollars.in(:yen)}"
