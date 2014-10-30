class Dag1

	# Say hello, world.
	def print_hello_world
		puts "Hello, world."
	end
	
	# Return index of Ruby in Helo, Ruby.
	def print_index
		#zet de index nr in text_index
		text_index = "Hello, Ruby.".index /Ruby/
		#print text_index
		puts text_index
	end
	
	# Print my name (Myname) 10 times
	def print_name
		name = 'Myname'
		i = 0
		#zolang i kleiner is dan 10:
		while i < 10
			#print naam en verhoog i met 1
			puts name
			i= i + 1
		end
	end
	
	# Print text with increaing number
	def print_changing_numbers
		i = 1
		#zolang i kleiner is dan 11
		while i < 11
			#print de string met het nummer variabele en verhoog het daarna met 1
			puts "This sentence is number #{i}"
			i = i+1
		end
	end
	
	def random_number_guesser
		randomNumber = rand(10)
		guessedCorrectly = false
		puts "Raad het nummer! (0 t/m9)"
		while guessedCorrectly == false
			guessedNumber = gets
			if guessedNumber.to_i < randomNumber
				puts "Het nummer is groter dan je denkt!"
			elsif  guessedNumber.to_i > randomNumber
				puts "Het nummer is kleiner dan je denkt!"
			else
				puts "Correct! Het nummer is #{randomNumber} en je hebt #{guessedNumber} gegokt!"
				guessedCorrectly = true
			end
		end
	end
	
	
	d = Dag1.new()
	puts "Opdracht 1"
	d.print_hello_world
	puts "\nOpdracht 2"
	d.print_index
	puts "\nOpdracht 3"
	d.print_name
	puts "\nOpdracht 4"
	d.print_changing_numbers
	puts "\nOpdracht 5"
	d.random_number_guesser
	
	
	gets
end


