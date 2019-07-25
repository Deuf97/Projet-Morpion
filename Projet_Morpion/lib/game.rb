


class Game
	attr_accessor :player_x, :player_o, :game_board, :number_of_round_played

	def initialize
		@game_board = Board.new
		@player_x = Player.new("player2", "x" )
		@player_o = Player.new("player1", "o" )
		@@number_of_round_played = 0
	end

	#Ask players for their name
	def gets_name(player_number)
		puts "What's player #{player_number}'s name?"
		return input = gets.chomp
	end


	#Asks player for where they want to place the next symbol and changes the value of the case to the playr's symbol
	def player_choice(player)
		puts "Where do you want to place your next symbol ? (0 to 8)"
		choice = gets.chomp.to_i  
		@game_board.board[choice].change_value(player.symbol) 
		player.array_of_positions << choice
		@@number_of_round_played += 1
	end

    #checks if the game is over
    def is_game_still_going?(current_player)
		result = true
		if @@number_of_round_played == 9
			result = false 
			puts "It's a tie, nobody won"
		elsif  current_player.winner_combo == true
			result = false
			puts "Congratulations #{current_player.name} !! You won this game"
		end

		return result
	end

		def switch_player(player)
			if player == @player_x
				player = @player_o
			elsif player == @player_o
				player = @player_x
			end
			return player
		end
end
