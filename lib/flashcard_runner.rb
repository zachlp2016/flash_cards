require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

class Runner

  def initialize
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @card_4 = Card.new("What is the deepest part of the ocean", "Marianas Trench", :Geography)
    @deck = Deck.new([@card_1, @card_2, @card_3, @card_4])
    @round = Round.new(@deck)
  end

  def start_game
    introduction
    game_questions
    end_game
  end


  def game_questions
    question_1
    answer_1_result
    question_2
    answer_2_result
    question_3
    answer_3_result
    question_4
    answer_4_result
  end

  def end_game
    results
  end

  def introduction
    p "This is a 4 question game that will determine your propensity to answer"
    p "questions about XXXXXXXX.  Good Luck!"
    sleep(2)
    system('clear')
  end

  def question_1
    p "Welcome!  You're playing with 4 cards."
    p "--------------------------------------"
    p "The is card number 1 out of 4."
    p "Question: #{@card_1.question}"
  end

  def answer_1_result
    answer_1 = gets.chomp
      @new_turn = @round.take_turn(answer_1)
    if answer_1 == @new_turn.card.answer
      p "Correct!"
    else
      p "Incorrect. Please answer again."
      answer_1_result
    end
    sleep(2)
    system('clear')
  end

  system('clear')

  def question_2
    p "Welcome!  You're playing with 4 cards."
    p "--------------------------------------"
    p "The is card number 2 out of 4."
    p "Question: #{@card_2.question}"
  end

  def answer_2_result
    answer_2 = gets.chomp
      @new_turn_2 = @round.take_turn(answer_2)
    if answer_2 == @new_turn_2.card.answer
      p "Correct!"
    else
      p "Incorrect. Please answer again."
      answer_2_result
    end
    sleep(2)
    system('clear')
  end

  system('clear')

  def question_3
    p "Welcome!  You're playing with 4 cards."
    p "--------------------------------------"
    p "The is card number 3 out of 4."
    p "Question: #{@card_3.question}"
  end

  def answer_3_result
    answer_3 = gets.chomp
      @new_turn_3 = @round.take_turn(answer_3)
    if answer_3 == @new_turn_3.card.answer
      p "Correct!"
    else
      p "Incorrect. Please answer again."
      answer_3_result
    end
    sleep(2)
    system('clear')
  end

  system('clear')

  def question_4
    p "Welcome!  You're playing with 4 cards."
    p "--------------------------------------"
    p "The is card number 4 out of 4."
    p "Question: #{@card_4.question}"
  end

  def answer_4_result
    answer_4 = gets.chomp
      @new_turn_4 = @round.take_turn(answer_4)
    if answer_4 == @new_turn_4.card.answer
      p "Correct!"
    else
      p "Incorrect. Please answer again."
      answer_4_result
    end
    sleep(2)
    system('clear')
  end
end

newgame = Runner.new
newgame.start_game
