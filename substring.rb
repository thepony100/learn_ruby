# File : substring.rb
# Name : Waris Aiemworawutikul
# Description : contain substring method that takes words as the first arguement and dictionary of valid substrings as the second arguement. The method will return a hash listing each substring of the first arguement and how many times it was found.

def substrings text,dictionary
	text.downcase!
	hash = {}
	dictionary.each do |word|
		count = text.scan(word.downcase).length
		hash[word] = count if count > 0
	end
	hash
end

if __FILE__ == $0
	dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
	print substrings("Howdy partner, sit down! How's it going?", dictionary)	
end
