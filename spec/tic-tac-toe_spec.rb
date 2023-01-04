require './tic-tac-toe'

describe Game do

  describe '#check_if_winner' do
    subject(:game_winner) { described_class.new('X','O') }
    context 'when the board reads X X X across the top row' do
      before do
        allow(game_winner).to receive(:display_board)
        allow(game_winner).to receive(:puts)
      end

      it 'is game over bc there is a winner' do
        board_positions = game_winner.instance_variable_get(:@board_positions)
        board_positions[0] = 'X'
        board_positions[1] = 'X'
        board_positions[2] = 'X'
        result = game_winner.check_if_winner
        expect(result).to eq(true)
      end
    end
  end

  describe '#switch_players' do
    subject(:game_switch) { described_class.new('X', 'O') }

    context 'after player 1 takes a turn' do
      before do
        allow(game_switch).to receive(:gets).and_return(1)
      end

      it 'switch to player 2' do
        next_player = game_switch.switch_players
        expect(next_player).to eq('O')
      end
    end
  end
end
