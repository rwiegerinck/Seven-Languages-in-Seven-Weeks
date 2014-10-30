class Dag2

	def print_four_numbers_at_a_time
		#maak en vul de array
		a = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
		#numerator voor het printen. Begin bij 1 (Als het 0 is print hij te vaak vanwege de restdeling)
		i = 1
		#loop door de array en bij elk nummer doe:
		a.each do |nr|
			#kijk bij elke loop of i een meervoud van 4 is
			if i%4 == 0 
				#print de cijfers van i-4 tot i.
				puts a[i-4...i].to_s			
			end
			#wat er ook gebeurt, verhoog i met 1.
			i= i+1
		end
	end

	def print_four_numbers_at_a_time_with_slice
		#maak en vul de array
		a = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
		#print de array in delen van 4 elementen
		a.each_slice(4) {|nr| p nr}
	end
	
	def grep_functie
		#open de file textfile.txt
		temp_string = ""
		f = File.open("textfile.txt", "r")
		#voor elke regel doe:
		f.each_line do |line|
			#voeg de regel aan temp_string ALS er een match in zit met de woorden "Myname Myname"
			temp_string += line if line =~ /Myname Myname(.*)/
		end
		#sluit de file
		f.close
		return temp_string
	end
	
	d = Dag2.new()
	puts "Opdracht 1a"
	d.print_four_numbers_at_a_time
	puts "\nOpdracht 1b"
	d.print_four_numbers_at_a_time_with_slice
	puts "\nOpdracht 3"
	puts d.grep_functie
	gets
end


