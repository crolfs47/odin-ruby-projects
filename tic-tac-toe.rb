class Game

    def initialize
        @board_positions = ['1','2','3','4','5','6','7','8','9']
    end

    def display_board
        row1 = " #{@board_positions[0]} | #{@board_positions[1]} | #{@board_positions[2]} "
        row2 = " #{@board_positions[3]} | #{@board_positions[4]} | #{@board_positions[5]} "
        row3 = " #{@board_positions[6]} | #{@board_positions[7]} | #{@board_positions[8]} "
        divider = "---+---+---"
        p row1
        p divider
        p row2
        p divider
        p row3
    end

    def play
        display_board
    end

end

game1 = Game.new
game1.display_board