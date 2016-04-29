=begin
# Blackjack Dealer

attributes: species: suggestions: human, martian, octopus, robot, Vulcan
					 number of dealing arms/tentacles, 
					 bowtie color

methods: honest - 3 random cards (1..13), 
		 bottom_of_deck, 3 random cards (5..13)
		 kindly_grandmother - 3 random cards (1..8), 
		 Karnak - two cards ace and king - instant win! 

=end



class Black_jack_dealer

	attr_accessor :species, :appendages 
	attr_reader	:bowtie

	def initialize(species, appendages)
		puts "Shuffling the deck."
		@species = species
		@appendages = appendages.to_i
		@bowtie = "red & black polka dots"

	end


	def honest
		@card1 = rand(1..11)
		@card2 = rand(1..11)
		@card3 = rand(1..11)
		puts "Here are your cards: #{@card1}, #{@card2}, #{@card3}"

		honest_hand = @card1 + @card2 + @card3
			if honest_hand <= 21
				puts "You won!"
				true
			else
				puts "Gee, better luck next time."
				false
			end
	end
end

