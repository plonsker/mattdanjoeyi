class Card
  attr_reader :definition, :word, :answered, :card_id

  def initialize(args = {})
    @definition = args.fetch(:definition, "No definition")
    @word = args.fetch(:word, "No word")
    @answered = args.fetch(:answered, false)
    @card_id = args.fetch(:card_id, 0)
  end

  def was_that_correct?(guess)
    #if the guessed word that you send me is == to the @word for this card, return true!
    @word == guess
  end

  def to_s
    "Definition:\n" + @definition
  end



end

# my_card = Card.new

# --> Hey card!
# give me your definition!
#     my_card.definition --> with the attr_reader now we can READ the definition attribute

my_card = Card.new

puts my_card
p my_card.definition
p my_card.word
p my_card.answered
p my_card.card_id
p my_card
