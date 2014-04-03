# Improved 'Ask' method

questions = ['Do you like eating tacos?',
			 'Do you like eating burritos?',
			 'Do you wet the bed?',
			 'Do you like eating chimichangas?',
			 'Do you like eating sopapillas?']

# Definition of method
def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		if reply == 'yes'
			return true
		end
		if reply == 'no'
			return false
		end
		puts 'Please answer "yes" or "no".'
	end
end

# Start program 
puts 'Hello, and that you for taking the time to'
puts 'help me with this experiment. My experiment'
puts 'has to do with the way people feel about'
puts 'Mexican food. Just thinking about Mexican food'
puts 'and try to answer every question honestly,'
puts 'with either a "yes" or "no". My experiment'
puts 'has nothing to do with bed-wetting.'
puts

questions.each do |question|
	likes_it = ask question
	puts likes_it
end


# Old-School Roman Numerals

def rom_num num
	multiplier = num /1000
	romans = 'M' * multiplier
	multiplier = num%1000/500
	romans = romans + 'D' * multiplier
	multiplier = num%500/100
	romans = romans + 'C' * multiplier
	multiplier = num%100/50
	romans = romans + 'L' * multiplier
	multiplier = num%50/10
	romans = romans + 'X' * multiplier
	multiplier = num%10/5
	romans = romans + 'V' * multiplier
	multiplier = num%5/1
	romans = romans + 'I' * multiplier
	romans
end

puts "Enter numbers and I'll return Old-school Roman Numerals"
num = gets.chomp.to_i
puts rom_num num

# Modern Roman numerals
def rom_num num
	if num > 3000
		puts 'Please enter a number less than 3000.'
	else
		romans = 'M' * (num /1000) 	# M: 1000
		# Check if 400 or 900
		if num%1000/100 == 4
			romans = romans + 'CD'
		elsif num%1000/100 == 9
			romans = romans + 'CM'
		else
			romans = romans + 'D' * (num%1000/500)	# D: 500
			romans = romans + 'C' * (num%500/100)	# C: 100
		end
		#Check if 40 or 90
		if num%100/10 == 4
			romans = romans + 'XL'
		elsif num%100/10 == 9
			romans = romans + 'XC'
		else	
			romans = romans + 'L' * (num%100/50)	# L: 50
			romans = romans + 'X' * (num%50/10)		# X: 10
		end
		# Check if 4 or 9
		if num%10 == 4
			romans = romans + 'IV'
		elsif num%10 == 9
			romans = romans + 'IX'
		else
			romans = romans + 'V' * (num%10/5)		# V: 5
			romans = romans + 'I' * (num%5/1)		# I: 1
			romans
		end
	end
end

puts "Enter numbers and I'll return Modern Roman Numerals"
num = gets.chomp.to_i
puts rom_num num
