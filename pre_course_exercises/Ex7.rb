# 99 bottles of beer

bottles = 99

while bottles > 0
	puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
	puts "Take one down and pass it around, #{bottles-1} bottles of beer on the wall."
	bottles -= 1
end
 	puts " No more bottles of beer on the wall, no more bottles of beer."
	puts "Go to the store and buy some more, 99 bottles of beer on the wall."

# Deaf grandma 
count = []
while true
	puts 'What would you like to say to granny?'
	say = gets.chomp
	if say == 'BYE'
			break
	elsif say == say.upcase
		year = rand(1930..1950)
		puts 'NO, NOT SINCE ' + year.to_s + '!'
		count = []
	else
		puts 'HUH?! SPEAK UP, SONNY!'
		count = []
	end
end

# Deaf grandma extended
count = []
while true
	puts 'What would you like to say to granny?'
	say = gets.chomp
	if say == 'BYE'
		count << say.upcase
		if count.length == 3
			break
		end
	elsif say == say.upcase
		year = rand(1930..1950)
		puts 'NO, NOT SINCE ' + year.to_s + '!'
		count = []
	else
		puts 'HUH?! SPEAK UP, SONNY!'
		count = []
	end
end

# Leap years
puts 'Enter a start year'
s_year = gets.chomp.to_i
puts 'Now enter an end year'
e_year = gets.chomp.to_i
puts ''
puts 'The leaps years are:'

while s_year <= e_year
	if s_year % 4 == 0
		if s_year % 100 != 0 || s_year % 400 == 0
			puts s_year
		end
	end
	s_year+=1
end
