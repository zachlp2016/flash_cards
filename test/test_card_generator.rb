require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card_generator'


class CardGeneratorTest < Minitest::Test

  def setup
    @filename = "cards.txt"
    @cards = CardGenerator.new(filename).cards
  end

  def test_card_generator_class_exists
    assert_instance_of CardGenerator, @cards
  end
end
