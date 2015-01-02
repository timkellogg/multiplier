# This Ruby program asks a user to input numbers and then multiplies them together.
# It prints out the result to two decimal places regardless of whether the user wanted to 

# take user input
puts "What numbers would you like to multiply?"
puts "Note that because the product of something multiplied by 0 is always 0,"
puts "this application will ignore it."
user_input = gets 

# split into chunks for array and convert strings to zeros 
numbers = user_input.split(" ").map(&:to_f)

# remove 0s 
numbers.select! { |i| i > 0 } 

# multiplying the numbers in the array 
def product(array)
	final = 1.00 
	array.each do |i|
		final *= i 
	end 
	sprintf('%.2f', final)
end 

puts "The product of #{numbers} is:"
puts product(numbers) 
