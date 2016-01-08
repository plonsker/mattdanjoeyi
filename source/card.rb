class Card
  attr_reader :definition, :word, :answered, :card_id

  def initialize(args = {})
    @definition = args.fetch(:definition, "No definition")
    @word = args.fetch(:word, "No word")
    @answered = args.fetch(:answered, false)
    @card_id = args.fetch(:card_id, 0)
  end

  def correct?(guess)
    @word == guess
  end

  def to_s
    "Definition:\n" + @definition
  end

end
