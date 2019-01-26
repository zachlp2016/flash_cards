class CardGenerator

  attr_reader :file,
              :cards

  def initialize(file)
    @file = file
    @cards = []
  end

  def card_divider
    File.readlines(@file).each do |line|
      @cards << line
    end
  end
end
