# Amended Civilization III continent size algorithm
# to account for board limits

M = 'land'
o = 'water'

world = [[o,o,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,M,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [M,M,M,M,M,M,M,M,M,M,M],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,M,o,o,o,o,o]]

def continent_size world, x, y
	if (x < 0 || x > 10) || (y < 0 || y > 10)
		0
	else
		if world[y][x] != 'land'
			# Either it's water or we already counted it,
			# but either way, we don't want to count it now.
			return 0
		end
		# So first we count this tile...
		size = 1
		world[y][x] = 'counted land'

		# ...then we count all of the neighboring eight tiles
		# (and, of course, their neighbours by way of the recursion).
		size = size + continent_size(world, x-1, y-1)
		size = size + continent_size(world, x , y-1)
		size = size + continent_size(world, x+1, y-1)
		size = size + continent_size(world, x-1, y )
		size = size + continent_size(world, x+1, y )
		size = size + continent_size(world, x-1, y+1)
		size = size + continent_size(world, x , y+1)
		size = size + continent_size(world, x+1, y+1)
		size
	end
end

puts continent_size(world, 5, 5)

# Sort method without recursive

def my_sort unsorted_array
	sorted = [unsorted_array[0]]
	unsorted_array.delete_at(0)
	count = 0
	while unsorted_array.length > 0
		while unsorted_array[0] > sorted[count]
			count += 1
			break if count > (sorted.length - 1)
		end
		sorted.insert(count, unsorted_array[0])
		unsorted_array.delete_at(0)
	end
	puts sorted
end

puts 'Give me some words and I\'ll sort it'
words = []

# Establish an array of words.
while true
	word = gets.chomp
	break if word.empty?
	words << word
end
my_sort words

# Sort method with recursive
	# Recursive sort wrapper.
def sort some_array
	recursive_sort some_array, []
end

	# Recursive sort
def recursive_sort unsorted_array, sorted_array	
		sorted = sorted_array # starting with []
		list_length = unsorted_array.length
	if list_length == 0
		puts sorted
	else
		# test here
		unsorted_array.each do |word|
			score = count = 0
			while count < list_length
				if word <= unsorted_array[count]
					score +=1
				end
				count += 1
			end
			if score == list_length
				sorted << word
				index = unsorted_array.index(word)
				unsorted_array.delete_at(index)
				break
			end
		end
		recursive_sort(unsorted_array,sorted)
	end
end

# Start of Program
puts "Hi, add as many words as you want and I'll sort your list."
puts "Hit enter twice to end your list."
words = []

while true
	word = gets.chomp
	break if word.empty?
	words << word
end
puts 'Using Ruby\'s sort method: '
puts words.sort
puts 'Using custom made sorter method: '
sort words