
 
class Board
    attr_accessor :board

    def initialize
        @board = []
        9.times do |i|
            @board << BoardCase.new
        end
    end

    #displays the board with its current boradcase's values
    def display_board
        puts "#{@board[0].value} | #{@board[1].value} | #{@board[2].value}"
        puts "-"*10
        puts "#{@board[3].value} | #{@board[4].value} | #{@board[5].value}"
        puts "-"*10
        puts "#{@board[6].value} | #{@board[7].value} | #{@board[8].value}"
    end

end


# jeu = Board.new
# jeu.board[4].change_value("X")
# system("clear")
# jeu.display_board
