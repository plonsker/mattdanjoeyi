
require 'pry'
require_relative 'parsable'
require_relative 'card'


class Deck
  include Parsable
  attr_reader :cards

  def initialize(args = {})
    @cards = assemble_cards
  end

  def assemble_cards
    file = "flashcard_samples.txt"
    txt_parser(file).map.with_index do |word_sub_array, index|
      Card.new({:word => word_sub_array[0], :definition => word_sub_array[1], :card_id => index })
    end
  end

end

my_deck = Deck.new

p my_deck.cards
