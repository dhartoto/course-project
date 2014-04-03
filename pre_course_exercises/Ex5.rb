# Full name greating.
puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hi there " + first_name + ' ' + middle_name + ' ' + last_name

# alternative
puts "Hi there #{first_name} #{middle_name} #{last_name}."


# Favourite number
puts "What is your favourite number?"
fav_num = gets.chomp.to_i
fav_num += 1
puts "You favourite number should really be " + fav_num.to_s

# alternative
 puts "Your favourite number should really be #{fav_num + 1}."