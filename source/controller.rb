require 'pry'
require_relative 'parsable'
require_relative 'view'
require_relative 'deck'
require_relative 'card'




class Controller
  include Parsable

  def initialize
   @my_deck = Deck.new
   @my_view = View.new
   run_interface
  end

  def run_interface
    @my_view.start_studying
    @my_deck.cards.shuffle.each do |card|
      @my_view.display(card)
      user_answer = @my_view.get_user_input

      until card.correct?(user_answer)
        @my_view.display("Unfortunately that is incorrect!\n Please try again.\n ")
        user_answer = @my_view.get_user_input
      end
    @my_view.display("Correct!\n ")

    end
    @my_view.display("Great Job. Now go learn some more stuff\n ")
  end
end
