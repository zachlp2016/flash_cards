require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'

class TurnTest < Minitest::Test

  def test_it_exists
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    assert_instance_of Card, @card
  end

end
