class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player_turn = @player1
    @game_over = false
    @board_positions = %w[1 2 3 4 5 6 7 8 9]
  end

  def display_board
    row1 = " #{@board_positions[0]} | #{@board_positions[1]} | #{@board_positions[2]} "
    row2 = " #{@board_positions[3]} | #{@board_positions[4]} | #{@board_positions[5]} "
    row3 = " #{@board_positions[6]} | #{@board_positions[7]} | #{@board_positions[8]} "
    divider = '---+---+---'
    puts row1
    puts divider
    puts row2
    puts divider
    puts row3
  end

  def play_game
    player_input until @game_over
  end

  def player_input
    puts "\n"
    display_board
    puts "\nPlease select a board position, Player #{@player_turn}"
    player_choice = gets.chomp.to_i
    move(player_choice, @player_turn)
    check_if_winner
    check_if_tie
  end

  def move(player_choice, player)
    @player_choice = player_choice
    @player = player
    if check_valid_move(player_choice)
      @board_positions[player_choice - 1] = player
      switch_players()
    else
      puts 'Please enter a valid board position'
    end
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

  def check_if_winner
    winning_combinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]
    winning_combinations.each do |combination|
      win_position1 = combination[0]
      win_position2 = combination[1]
      win_position3 = combination[2]

      position1 = @board_positions[win_position1]
      position2 = @board_positions[win_position2]
      position3 = @board_positions[win_position3]

      if position1 == position2 && position2 == position3
        @game_over = true
        puts "\n"
        display_board
        switch_players()
        puts "\nWINNER is player #{@player_turn}!"
      end
    end
  end

  def check_if_tie
    if @board_positions.all? { |position| position == 'X' || position == 'O'}
      @game_over = true
      puts "\n"
      display_board
      puts "\nIt's a tie!"
    end
  end
end

game = Game.new('X', 'O')
game.play_game
