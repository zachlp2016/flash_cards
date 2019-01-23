require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require 'pry'

class TestDeck < Minitest::Test

  def setup
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @cards = [@card, @card2, @card3]
    @deck = Deck.new(@cards)
  end

  def test_classes_exist
    assert_instance_of Card, @card
    assert_instance_of Card, @card2
    assert_instance_of Card, @card3
    assert_instance_of Deck, @deck
  end

  def test_deck_holds_cards
    assert_equal [@card, @card2, @card3], @deck.cards
  end

  def test_deck_tallies_card_count
    assert_equal 3, @deck.count
  end

  def test_deck_has_cards_in_category
    assert_equal [@card2, @card3], @deck.cards_in_category(:STEM)
    assert_equal [@card], @deck.cards_in_category(:Geography)
    assert_equal [], @deck.cards_in_category("Pop Culture")
  end
end
