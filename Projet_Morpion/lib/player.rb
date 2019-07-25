


class Player
    attr_accessor :name, :symbol, :array_of_positions

    def initialize(name, symbol)
      @name = name
      @symbol = symbol
      @array_of_positions = [] #Every positions the user played
     end

  
     #Vérifie si le joueur à un combo gagnant
  def winner_combo
    result = false
      win=[
     [0,1,2],
     [3,4,5],
     [6,7,8],
     [0,3,6],
     [1,4,7],
     [2,5,8],
     [0,4,8],
     [2,4,6],
    ]

    win.each do |combo|
      if (combo - @array_of_positions).empty?
        result = true
      end
    return result
    end


    win[0] - tab1
  end
end