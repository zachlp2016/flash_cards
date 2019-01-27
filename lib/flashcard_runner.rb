require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require './lib/card_generator'
require 'pry'

class Runner

  def initialize
    filename = 'cards.txt'
    @card_generator = CardGenerator.new(filename)
    @card_generator.card_divider
    @card_generator.card_maker
    @deck = Deck.new([@card_generator.cards].flatten)
    @round = Round.new(@deck)
  end

  def start_game
    introduction
    game_questions
    results
  end


  def game_questions
    question_1
    answer_1_result
    question_2
    answer_2_result
    question_3
    answer_3_result
    question_4
    answer_4_result
  end

  def introduction
    puts "This is a 4 question game. Good Luck!"
    sleep(2)
    system('clear')
  end

  def question_1
    puts "Card number 1 out of 4."
    puts "--------------------------------------"
    puts "\n"
    puts "Question: #{@deck.cards[0].question}"
  end

  def answer_1_result
    answer_1 = gets.chomp
      @new_turn = @round.take_turn(answer_1)

    if answer_1 == @new_turn.card.answer
        puts "Correct!"
      else
        puts "Incorrect."
      end
    sleep(2)
    system('clear')
  end

  system('clear')

  def question_2
    puts "Card number 2 out of 4."
    puts "--------------------------------------"
    puts "\n"
    puts "Question: #{@deck.cards[1].question}"
  end

  def answer_2_result
    answer_2 = gets.chomp
      @new_turn_2 = @round.take_turn(answer_2)
    if answer_2 == @new_turn_2.card.answer
      puts "Correct!"
    else
      puts "Incorrect."
    end
    sleep(2)
    system('clear')
  end

  system('clear')

  def question_3
    puts "Card number 3 out of 4."
    puts "--------------------------------------"
    puts "\n"
    puts "Question: #{@deck.cards[2].question}"
  end

  def answer_3_result
    answer_3 = gets.chomp
      @new_turn_3 = @round.take_turn(answer_3)
    if answer_3 == @new_turn_3.card.answer
      puts "Correct!"
    else
      puts "Incorrect."
    end
    sleep(2)
    system('clear')
  end

  system('clear')

  def question_4
    puts "Card number 4 out of 4."
    puts "--------------------------------------"
    puts "\n"
    puts "Question: #{@deck.cards[3].question}"
  end

  def answer_4_result
    answer_4 = gets.chomp
      @new_turn_4 = @round.take_turn(answer_4)
    if answer_4 == @new_turn_4.card.answer || answer_4 == @new_turn_4.card.answer
      puts"Correct!"
    else
      puts "Incorrect."
    end
    sleep(2)
    system('clear')
  end

  def results
    puts "/==========/ Game Over! /==========/"
    puts "\n"
    puts "You had #{@round.number_correct} correct guesses out of #{@round.turns.count} for a total score of #{@round.percent_correct.to_i} out of 100."
    category_correct
    #
    # p "******* Game Over! ******"
    # p "You had #{@round.number_correct} correct guesses out of #{@round.turns.count} for a total score of #{@round.percent_correct}"
    # p "#{@round.deck.cards[0].category} - #{@round.percent_correct_by_category(@round.deck.cards[0].category)} correct."
    # p "#{@round.deck.cards[2].category} - #{@round.percent_correct_by_category(@round.deck.cards[2].category)} correct."


  end

  def category_correct
    categories = []
    @round.deck.cards.each do |card|
      categories << card.category
    end
    categories.uniq.each do |category|
      puts "#{category} - #{@round.percent_correct_by_category(category).to_i}% correct"
    end
  end
end

newgame = Runner.new
newgame.start_game
