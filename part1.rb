#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
	chopped = str.gsub(/\W/, '')
	return chopped[0, chopped.length/2].reverse.downcase == chopped[-(chopped.length/2), chopped.length/2].downcase
end

def count_words(str)
	test_arr = []
	str.split(/\b/).each do |i|
		test_arr.push(i.downcase) if i.match(/\w+/)
	end
	results = Hash.new
	test_arr.each do |i|
		results[i] = test_arr.count(i)
	end
	return results
end
