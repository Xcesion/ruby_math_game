class Player
  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def get_answer
    print "#{@name}: "
    gets.chomp.to_i
  end

  def incorrect_answer
    @score -= 1
  end
end