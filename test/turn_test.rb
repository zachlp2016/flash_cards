require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'

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
end
