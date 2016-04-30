=begin
# Blackjack Dealer

attributes: species: suggestions: human, martian, octopus, robot, Vulcan
					 number of dealing arms/tentacles, 
					 bowtie color

methods: honest - 4 random cards (1..11), 
		 bottom_of_deck, 3 random cards (5..11)
		 kindly_grandmother - 3 random cards (1..8), 
		 Carnac the Magnificent - two cards ace and king - instant win! 

interface - ask the player to play or cash out. If play, pick random number for case statement.

final report - select the number of wins in the cashout hash and make a report.
=end


# Blackjack class====================================================================

class Blackjack_dealer

	attr_accessor :species, :appendages, :bowtie
	#attr_reader	

	def initialize(species, appendages)
		puts "Shuffling the deck with #{appendages} appendages..."
		@species = species
		@appendages = appendages.to_i
	end

	def bowtie(color)
		puts"You can always trust a #{species} wearing a #{color} bowtie."
		@color = color
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
				puts "Sorry, better luck next time."
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

	def game_report(gamecount)
		win_record = gamecount.select{|game, wins| wins == true}
		puts "You played #{gamecount.length} times and won #{win_record.length} time(s) at this table."
	end

end


#Enter space casino ========================================================================
cashout = false

puts "Welcome to the Intergalactic Orion's Belt Casino. Come win some credits to get off this rock!"
puts "**********"


until cashout
	puts "Type 'play' to go to a space blackjack table or type 'exit' to cash out."
	gamble = gets.chomp

	if gamble.downcase == "exit"
		cashout = true
	else
		# Make a space dealer ===========================================================	
		puts "**********"
		puts "Pick a blackjack table. What species is the dealer? (ex. human, martian, octopus, robot, Vulcan...)"
		species = gets.chomp
		puts "How many dealing arms/appendages/tentacles does the dealer have?"
		appendages = gets.chomp.to_i
		
		dealer = Blackjack_dealer.new(species, appendages)
		
		puts "By the way, what color or pattern is the dealer's bowtie?"
		bow_color = gets.chomp
		dealer.bowtie(bow_color)
		
		

		# play blackjack ================================================================
		games = {}
		
		valid_input = false
		game_counter = 0
		
		until valid_input	
		
			puts "Play or leave table? (type 'p' or 'q')"
			deal = gets.chomp
			puts "----------------"
			
			if deal.downcase == "q"
				valid_input = true
			else
				play = rand(1..10)
				case 
					when play >=8 && play <=10
						then result = dealer.honest
					when play >=5 && play <=7
						then result = dealer.bottom_of_deck
					when play >=2 && play <=4
						then result = dealer.soft_spot
					when play == 1
						then result = dealer.carnac	
				end	
			end
			game_counter += 1
			games[game_counter] = result
		
		end
		
	games.delete(game_counter) #deleting the last key that was made when the loop ended on quit.
	
	dealer.game_report(games)


	end


end

puts "Thank you for visiting the Orion's Belt Casino. Please come again."




