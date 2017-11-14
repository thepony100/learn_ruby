# File: bubble_sort.rb
# Name: Waris Aiemworawutikul
# Description: bubble_sort method that will receive array of integer then bubble sort on the array and return sorted array

def bubble_sort array
	(0...array.length-1).each do |i|
		(i+1...array.length).each do |j|
			if array[i]>array[j]
				array[i]=array[i]+array[j]
				array[j]=array[i]-array[j]
				array[i]=array[i]-array[j]
			end
		end
	end
	array
end

if __FILE__ == $0
	print bubble_sort([4,3,78,2,0,2])
end

