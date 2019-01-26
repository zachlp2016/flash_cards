require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card_generator'



class CardGeneratorTest < Minitest::Test
  def setup
    @card_generator = CardGenerator.new('cards.txt')
  end

  def test_card_generator_class_exists
    assert_instance_of CardGenerator, @card_generator
  end

  def test_card_generator_has_a_filename
    assert_equal "cards.txt", @card_generator.file
  end

  def test_card_generator_has_no_cards
    assert_equal [], @card_generator.cards
  end

  def test_card_generator_can_divide_cards
    @card_generator.card_divider
    assert_equal [], @card_generator.cards
  end

end
