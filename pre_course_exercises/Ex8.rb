# Building and sorting an array
puts 'Type as many single words as you like and finish by keying a blank enter'
words = []

# 9 lines
while true
	word = gets.chomp
	if word == ''
		puts words.sort
		break
	else
		words.push word
	end
end

# Table of contents (revisited)
contents = ['Chapter 1:', 	'Getting started', 	'page 1', 
			'Chapter 2:', 	'Numbers', 			'page 9', 
			'Chapter 3:', 	'Letters', 			'page 13']
puts 'Table of Contents'.center(50)
line_width = 20
puts (contents[0].ljust(line_width) + contents[1].center(line_width) + contents[2].rjust(line_width))
puts (contents[3].ljust(line_width) + contents[4].center(line_width) + contents[5].rjust(line_width))
puts (contents[6].ljust(line_width) + contents[7].center(line_width) + contents[8].rjust(line_width))
