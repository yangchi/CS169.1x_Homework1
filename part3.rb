#!/usr/bin/env ruby
def combine_anagrams(words)
	currents = []
	while word = words[0]
		current = []
		current << word
		words.delete_at(0)
		words.each do |another|
			if another.downcase.chars.sort.join == word.downcase.chars.sort.join
				current << another
			end
		end
		current.each do |i|
			if words.include? i
				words.delete_at(words.index(i))
			end
		end
		currents << current
	end
	return currents
end

