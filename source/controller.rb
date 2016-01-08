require 'pry'
require_relative 'parsable'


class Controller
  include Parsable

  def initialize(file)
   @my_deck = txt_parser(file)

  end


end
