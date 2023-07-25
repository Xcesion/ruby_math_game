class MathQuestion
  def generate_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @operator = rand(1..2) == 1 ? '+' : '-'
    "What does #{@num1} #{@operator} #{@num2} equal?"
  end

  def check_answer(answer)
    correct_answer = @operator == '+' ? @num1 + @num2 : @num1 - @num2
    answer == correct_answer
  end
end