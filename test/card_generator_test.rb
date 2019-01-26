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
    assert_equal [], @card_generator.cards_arr
  end

  def test_card_generator_can_divide_cards
    @card_generator.card_divider
    arr = ["Who is the current president?, Donald Trump, Politics", "What company has created the Iphone?, Apple, Finance", "On what continent is the country of Australia located?, Australia, Geography", "What is the deepest part of the ocean?, Marianas Trench, Geography"]
    assert_equal arr, @card_generator.cards_arr
  end

  def test_card_maker_makes_array_of_new_cards
    @card_generator.card_divider
    arr = ["Who is the current president?, Donald Trump, Politics", "What company has created the Iphone?, Apple, Finance", "On what continent is the country of Australia located?, Australia, Geography", "What is the deepest part of the ocean?, Marianas Trench, Geography"]
    assert_equal arr, @card_generator.card_maker
  end
end
