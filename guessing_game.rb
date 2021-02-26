class Player
  attr_accessor :current_guess 
  
  def initialize
    @current_guess = nil 
  end 
end 

class GuessingGame
  attr_reader :range, :winning_num, :player
  attr_accessor :guesses
  
  def initialize()
    @range = nil
    @winning_num = nil
    @player = Player.new
    @guesses = nil 
  end

  def set_winning_number
    @winning_num = range.to_a.sample
  end

  def set_range_and_guesses(low_value, high_value)
    @range = low_value..high_value
    @guesses = Math.log2(range.size).to_i + 1
  end

  def get_high_value
    answer = nil
    puts "Please enter a number representing the high end of a range:"
    
    loop do
      answer = gets.chomp
      break if answer.to_i.to_s == answer
      puts "Please enter a numerical value."
    end 
    answer.to_i
  end

  def get_low_value
    answer = nil
    puts "Please enter a number representing the low end of a range:"
    
    loop do
      answer = gets.chomp
      break if answer.to_i.to_s == answer
      puts "Please enter a numerical value."
    end 
    answer.to_i
  end

  def player_turn
    puts "You have #{guesses} guesses remaining."
    answer = nil
    puts "Enter a number between #{range.first} and #{range.end}:"

    loop do 
      answer = gets.chomp
      answer = answer.to_i
      break if range.include?(answer)
      puts "Invalid input, enter a number between #{range.first} and #{range.end}:"
    end 
    
    decrement_guesses
    @player.current_guess = answer
  end

  def decrement_guesses
    @guesses -= 1
  end

  def player_won?
    player.current_guess == winning_num
  end 

  def check_guess
    if player.current_guess > winning_num
      puts "Your guess is too high."
    elsif player.current_guess < winning_num 
      puts "Your guess is too low."
    end 
  end 

  def out_of_guesses
    guesses == 0 
  end 

  def display_result
    if player_won?
      puts "That's the number! You won!"
    else
      puts "Out of guesses! You lose!"
    end
  end 

  def reset_game
    initialize
  end 

  def play
    set_range_and_guesses(get_low_value, get_high_value)
    set_winning_number
    loop do 
      player_turn
      check_guess
      break if player_won? || out_of_guesses
    end 
    display_result
    reset_game
  end 
end

game = GuessingGame.new
game.play
game.play

