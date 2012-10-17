#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.

def palindrome?(str)
	corestr = str.downcase.gsub(/[^0-9a-z]*/,'')
	corestr == corestr.reverse
end

def count_words(str)
	h = Hash.new()
	str.downcase.gsub(/\b[a-zA-Z0-9'\-]+\b/) { |s| h[s] = h.fetch(s, 0) + 1 }
	h
end