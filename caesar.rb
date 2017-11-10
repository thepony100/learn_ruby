# File: caesar.rb
# Name: Waris Aiemworawutikul
# Desc : basic Caesar cipher machine.

def caesar_cipher (text, number)
	cipher = ''
	text.each_char do |char|
		if (char>='a' and char<='z') or (char>='A' and char<='Z')
			uplow = char<='Z' ? 'A'.ord : 'a'.ord
			char = (((char.ord - uplow + number)%26)+uplow).chr
		end
		cipher += char
	end
	cipher
end
if __FILE__ == $0
	print '[c]ipher or [d]ecipher? '
	cord = gets.chomp
	print 'enter key [0-25] '
	key = gets.to_i
	key = 26 - key if cord=='d'
	print 'input : '
	puts 'output : ' + caesar_cipher(gets,key)
end
