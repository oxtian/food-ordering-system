=begin
User can input multiple food choices. At the end of the process, display as per below:
You have chosen: Food Name   Price
				 Food Name   Price
				 Food Name   Price
	GST (7%):
	Total Price: 
=end

puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Hello #{first_name} #{last_name}!"

#must be hard code, its database
restaurant_menu = Hash.new
restaurant_menu = {
	"1" => {
		:name => "Fried Chicken",
		:price => 5
	},
	"2" => {
		:name => "Fried Meehoon",
		:price => 10
	},
	"3" => {
		:name => "Char Keoy Teow",
		:price => 5
	}
}

#prompt user to key in their food choice
puts "\tMy Restaurant"
puts "(1)\tFried Chicken\t$5\n(2)\tFried Meehoon\t$10\n(3)\tChar Keoy Teow\t$5\nPlease key in the number to select your food. Press 'q' to checkout."
food_choice = ""

food_choices = Hash.new

while food_choice.downcase != 'q' do	
	food_choice = gets.chomp
	if restaurant_menu.key?(food_choice) || food_choice.downcase == "q"
		if food_choice.downcase != "q"
			if food_choices[food_choice].nil?
				food_choices[food_choice] = Array.new
				food_choices[food_choice].push(restaurant_menu.fetch(food_choice).fetch(:price))
			else
				food_choices[food_choice].push(restaurant_menu.fetch(food_choice).fetch(:price))
			end
		end
	else
		puts "Sorry! No such choice! Please select again!"
	end
end

puts "Food Name\tAmount\tPrice"

total_bill_before_gst = 0

food_choices.each do |key, val|
	food_name = restaurant_menu.fetch(key).fetch(:name)
	total_price_of_each_food_choice = val.inject(0){|sum,x| sum + x }
	puts "#{food_name}\t#{val.length}\t$#{total_price_of_each_food_choice}"
	total_bill_before_gst += total_price_of_each_food_choice
end

total_gst = total_bill_before_gst * 0.07
total_bill_after_gst = total_bill_before_gst * 1.07
 
puts "GST(7%)\t\t\t$#{total_gst.round(2)}"
puts "Total Price\t\t$#{total_bill_after_gst.round(2)}"

