=begin
# Blackjack Dealer

attributes: species: suggestions: human, martian, octopus, robot, Vulcan
					 number of dealing arms/tentacles, 
					 bowtie color

methods: honest - 4 random cards (1..11), 
		 bottom_of_deck, 3 random cards (5..11)
		 kindly_grandmother - 3 random cards (1..8), 
		 Carnac - two cards ace and king - instant win! 

=end



class Black_jack_dealer

	attr_accessor :species, :appendages 
	attr_reader	:bowtie

	def initialize(species, appendages)
		puts "Shuffling the deck..."
		@species = species
		@appendages = appendages.to_i
		@bowtie = "red & black polka dots"
		@cash_out = {}
	end


	def honest
		@card1 = rand(1..11)
		@card2 = rand(1..11)
		@card3 = rand(1..11)
		@card4 = rand(1..10)
		puts "Here are your cards: #{@card1}, #{@card2}, #{@card3}, #{@card4}"

		honest_hand = @card1 + @card2 + @card3 + @card4
			if honest_hand <= 21
				puts "You won!"
				true
			else
				puts "Gee, better luck next time."
				false
			end
	end

	def bottom_of_deck
		@card1 = rand(5..11)
		@card2 = rand(5..11)
		@card3 = rand(5..11)
		puts "Here are your cards: #{@card1}, #{@card2}, #{@card3}"

		bottom_deck = @card1 + @card2 + @card3
			if bottom_deck <= 21
				puts "You won! It's really your lucky day."
				true
			else
				puts "I'm afraid I'm gonna need a bit more of your pinky finger between these here bolt cutters..."
				false
			end
	end

	def soft_spot
		@card1 = rand(1..9)
		@card2 = rand(1..11)
		@card3 = rand(1..10)
		puts "Here are your cards: #{@card1}, #{@card2}, #{@card3}"

		soft = @card1 + @card2 + @card3
			if soft <= 21
				puts "You won! Go getcha' something nice."
				true
			else
				puts "I'm sure your luck will change. Give it another try, here's a chip."
				false
			end
	end

	def carnac
		puts "Here are your cards: 10, 11... Blackjack!!!"
		true
	end

end


dave = Black_jack_dealer.new("Martian", 4)

p dave.species
p dave.appendages

dave.honest
dave.bottom_of_deck
dave.soft_spot
dave.carnac



