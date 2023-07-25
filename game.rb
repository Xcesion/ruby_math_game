class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @turn = Turn.new(@player1, @player2)
  end

  def start_game
    puts '----- NEW GAME -----'
    until game_over?
      @turn.next_turn
      puts '----- NEW TURN -----'
    end
    declare_winner
    puts '----- GAME OVER -----'
  end 
  private
  def game_over?
    @player1.score === 0 || @player2.score === 0
  end

  def declare_winner
    if @player1.score === 0
      puts 'Player 2 wins'
    elsif @player2.score == 0
      puts 'Player 1 wins'
    end
  end

end