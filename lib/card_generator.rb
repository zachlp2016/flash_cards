require './lib/card.rb'

class CardGenerator

  attr_reader :file,
              :cards_arr,
              :cards

  def initialize(file)
    @file = file
    @cards_arr = []
    @cards = []
  end

  def card_divider
    File.readlines(@file).each do |line|
      @cards_arr << line.strip
    end
  end

  def card_maker
    @cards = @cards_arr.map do |card|
      split_card = card.split(", ")
      Card.new(split_card[0], split_card[1], split_card[2])
    end
  end
end
