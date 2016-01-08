require 'pry'
require_relative 'parsable'
require_relative 'view'


class Controller
  include Parsable

  def initialize(file)
   @my_deck = Deck.new
   @my_view = View.new
   run_interface
  end

 def run_interface
  @my_view.start_studying
  @my_deck.each do |card|
    @my_view.display(card)
    user_answer = @my_view.get_user_input
      if card.correct?(user_answer)






 end


end
