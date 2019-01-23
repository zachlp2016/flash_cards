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

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    @turns << new_turn
    new_turn
    # binding.pry
  end

  def number_correct
    correct = 0
    @turns.each do |turn|
      if turn.correct? == true
        correct += 1
      end
    end
    correct
  end

  def number_correct_by_category(category)
    correct = 0
    @turns.each do |turn|
      if turn.card.category == category && turn.correct?
        correct += 1
      end
    end
    correct
  end

  def percent_correct
    (number_correct.to_f / @turns.length.to_f) * 100
  end


end
