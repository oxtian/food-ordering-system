=begin
Prompt user to input his/her first name and last name. Welcome them with "Hello {full name}"
Then display the menu, prompt user to choose among the menu.
Once user have chosen their food, display: You have chosen {food_name}. The total price is {food_price}*7%.
=end

puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Hello, #{first_name} #{last_name}!"

puts "\tMy Restaurant"
puts "(1)\tFried Chicken\t$5\n(2)\tFried Meehoon\t$10\n(3)\tChar Keoy Teow\t$5\nPlease key in the number to select your food."
food_choice = gets.chomp

choice_output_map = {"1"=>"You have chosen Fried Chicken. The total price is $5.35.",
    "2"=>"You have chosen Fried Meehoon. The total price is $10.70.",
    "3"=>"You have chosen Char Keoy Teow. The total price is $5.35."}

puts choice_output_map.fetch food_choice,  "Sorry! No such choice!"




puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Hello, #{first_name} #{last_name}!"

puts "\tMy Restaurant"
puts "(1)\tFried Chicken\t$5\n(2)\tFried Meehoon\t$10\n(3)\tChar Keoy Teow\t$5\nPlease key in the number to select your food."
food_choice = gets.chomp

gst = 1.07

if food_choice == "1"
	val = 5.00 * gst;
	puts "You have chosen Fried Chicken. The total price is $#{val}."
elsif food_choice == "2"
	val = 10.00 * gst;
	puts "You have chosen Fried Meehoon. The total price is $#{val}."
elsif food_choice == "3" 
	val = 5.00 * gst;
	puts "You have chosen Char Keoy Teow. The total price is $#{val}."
else 
	puts "Sorry! No such choice!"
end
