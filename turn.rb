require_relative 'game'

class Turn
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players[0]
    @math_question = MathQuestion.new
  end

  def next_turn
    puts "#{current_player.name}: #{math_question.generate_question}"
    answer = current_player.get_answer
    if math_question.check_answer(answer)
      puts "#{current_player.name}: YES! You are correct."
    else
      puts "#{current_player.name}: Seriously? No!"
      current_player.incorrect_answer
    end
    display_scores
    if @current_player === @players[0] 
      @current_player = @players[1]
    else 
      @current_player = @players[0]
    end 
  end

  private

  attr_reader :current_player, :math_question

  def display_scores
    puts "#{@players[0].name}: #{@players[0].score}/3 vs #{@players[1].name}: #{@players[1].score}/3"
  end
end