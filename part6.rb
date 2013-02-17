class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(convert_to)
	  singular_convert_to = convert_to.to_s.gsub(/s$/, '')
	  if @@currencies.has_key? singular_convert_to 
		  self/@@currencies[singular_convert_to]
	  else
		  suer
	  end
  end
end

class String
	def palindrome?
		chopped = self.gsub(/\W/, '')
		return chopped[0, chopped.length/2].reverse.downcase == chopped[-(chopped.length/2), chopped.length/2].downcase
	end
end

module Enumerable
	def palindrome?
		#entries.to_s.gsub(/\W/,'').downcase == entries.to_s.gsub(/\W/, '').downcase.reverse
		x = self.each.collect { |i| i.to_s.gsub(/\W/, '').downcase }
		x == x.reverse
	end
end

puts 5.dollars.in(:euros)
puts 10.euros.in(:rupees)
puts 1.dollar.in(:rupee)
puts 10.rupees.in(:euro)
puts "abc".palindrome?
puts [1,2,3,2,1].palindrome? #
