require './lib/turn'

class Round

  attr_reader :deck,
              :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
    deck.cards[turns.count]
  end

# return it from the take_turn method. Also, when the
# take_turn method is called, the Round should move on to
# the next card in the deck.

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    @turns << new_turn
  end
end
