require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../lib", __FILE__)
require 'board_case.rb'
require 'board.rb'
require 'game.rb'
require 'player.rb'

def perform
    game = Game.new
    current_player = game.player_o

    while game.is_game_still_going?(current_player) == true
        current_player = game.switch_player(current_player)
        game.player_choice(current_player)
        game.game_board.display_board
        current_player.winner_combo
    end
end

perform