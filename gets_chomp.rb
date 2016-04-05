=begin
Write a ruby program to let user input his/her first name & last name. 
Then output the users full name in the format of first_name & last_name.
=end

puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "#{first_name} #{last_name}"