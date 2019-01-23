require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require 'pry'

class TurnTest < Minitest::Test

  def setup
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @turn = Turn.new("Juneau", @card)
  end

  def test_card_class_exists
    assert_instance_of Card, @card
  end

  def test_turn_class_exists
    assert_instance_of Turn, @turn
  end

  def test_turn_class_has_card
    assert_equal @card, @turn.card
  end

  def test_turn_class_has_guess
    assert_equal "Juneau", @turn.guess
  end

  def test_turn_class_handles_correct_guesses
    assert_equal true, @turn.correct?
  end
end
