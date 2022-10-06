class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player_turn = @player1
    @board_positions = %w[1 2 3 4 5 6 7 8 9]
  end

  def display_board
    row1 = " #{@board_positions[0]} | #{@board_positions[1]} | #{@board_positions[2]} "
    row2 = " #{@board_positions[3]} | #{@board_positions[4]} | #{@board_positions[5]} "
    row3 = " #{@board_positions[6]} | #{@board_positions[7]} | #{@board_positions[8]} "
    divider = '---+---+---'
    p row1
    p divider
    p row2
    p divider
    p row3
  end

  def play_game
    until @game_over  
      player_input()
    end

  end

  def move(player_choice, player)
    @player_choice = player_choice
    @player = player
    if check_valid_move(player_choice)
      @board_positions[player_choice - 1] = player
      display_board
      switch_players()
    else
      p 'Please enter a valid board position'
    end
  end

  def player_input
    p "Please select a board position"
    player_choice = gets.chomp.to_i
    move(player_choice, @player_turn)
  end

  def check_valid_move(player_choice)
    if @board_positions[player_choice - 1] == 'X' || @board_positions[player_choice - 1] == 'O'
      false
    elsif player_choice < 1 || player_choice > 9
      false
    else
      true
    end
  end

  def switch_players
    @player_turn = @player_turn == @player1 ? @player2 : @player1
  end

  def check_if_winner; end

  def check_if_tie; end
end

game = Game.new('X', 'O')
#game.move(1, 'X')
game.play_game
