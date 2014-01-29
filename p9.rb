#!/usr/bin/ruby
#part 9 - currency exchange

class Numeric
  @@currencies = {'dollar' => 1, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub(/s$/,'')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
  def in(currency)
    singular_currency = currency.to_s.gsub(/s$/, '')
    self * @@currencies[singular_currency]
  end
end

puts "to euro #{1.dollars.in(:euros)}"
puts "to rupee #{1.dollars.in(:rupees)}"
puts "to yen #{1.dollars.in(:yen)}"
puts "1 euro to yen #{1.euro.in(:yen)}"
