require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

class Runner

  @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  @deck = Deck.new([@card_1, @card_2, @card_3])
  @round = Round.new(@deck)
  # @new_turn = @round.take_turn(answer_1)
  # @new_turn_2 = @round.take_turn(answer_2)
  # @new_turn_3 = @round.take_turn(answer_3)

system('clear')

  p "Welcome!  You're playing with 4 cards."
  p "--------------------------------------"
  p "The is card number 1 out of 4."
    @new_turn = @round.take_turn(answer_1 = gets.chomp)
    p "Question: #{@new_turn.card.question}"
  if answer_1 == @new_turn.card.answer
    p "Correct!"
    p "This is card number 2 out of 4."
    p "Question: #{@new_turn_2.card.question}"
  else
    p "Incorrect. Please answer again."
  end

system('clear')

  p "Welcome!  You're playing with 4 cards."
  p "--------------------------------------"
  p "The is card number 1 out of 4."
    @new_turn = @round.take_turn(answer_1 = gets.chomp)
    p "Question: #{@new_turn.card.question}"
  if answer_1 == @new_turn.card.answer
    p "Correct!"
    p "This is card number 2 out of 4."
    p "Question: #{@new_turn_2.card.question}"
  else
    p "Incorrect. Please answer again."
  end

  system('clear')

  p "Welcome!  You're playing with 4 cards."
  p "--------------------------------------"
  p "The is card number 1 out of 4."
    @new_turn = @round.take_turn(answer_1 = gets.chomp)
    p "Question: #{@new_turn.card.question}"
  if answer_1 == @new_turn.card.answer
    p "Correct!"
    p "This is card number 2 out of 4."
    p "Question: #{@new_turn_2.card.question}"
  else
    p "Incorrect. Please answer again."
  end

end
