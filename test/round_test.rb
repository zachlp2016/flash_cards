require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @deck = Deck.new([@card_1, @card_2, @card_3])
    @round = Round.new(@deck)
  end

  def test_classes_exist
    assert_instance_of Card, @card_1
    assert_instance_of Card, @card_2
    assert_instance_of Card, @card_3
    assert_instance_of Deck, @deck
    assert_instance_of Round, @round
  end

  def test_round_holds_deck
    assert_equal @deck, @round.deck
  end

  def test_round_has_turns
    assert_equal [], @round.turns
  end

  def test_round_has_current_card
    assert_equal @card_1, @round.current_card
  end

  def test_round_has_take_turn_method
    new_turn = @round.take_turn("Juneau")
    assert_equal new_turn, @round.turns
  end
  #
  # def test_round_now_has_turns
  # end
end
