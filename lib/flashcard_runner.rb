require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

class Runner

  def initialize
    @card_1 = Card.new("Who is the current president", "Donald Trump", :Politics)
    @card_2 = Card.new("How many branches of government are there?", "3", :Politics)
    @card_3 = Card.new("On what continent is the country of Australia located", "Australia", :Geography)
    @card_4 = Card.new("What is the deepest part of the ocean", "Marianas Trench", :Geography)
    @deck = Deck.new([@card_1, @card_2, @card_3, @card_4])
    @round = Round.new(@deck)
  end

  def start_game
    introduction
    game_questions
    results
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
        p "Incorrect."
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
      p "Incorrect."
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
      p "Incorrect."
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
      p "Incorrect."
    end
    sleep(2)
    system('clear')
  end

  def results
    p "******* Game Over! ******"
    p "You had #{@round.number_correct} correct guesses out of #{@round.turns.count} for a total score of #{@round.percent_correct}"
    p "#{@round.deck.cards[0].category} - #{@round.percent_correct_by_category(@round.deck.cards[0].category)} correct."
    p "#{@round.deck.cards[2].category} - #{@round.percent_correct_by_category(@round.deck.cards[2].category)} correct."
  end
end

newgame = Runner.new
newgame.start_game
