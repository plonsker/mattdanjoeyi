require 'pry'
require_relative 'card'

module Parsable

  def txt_parser(input_file) #should parse the file into a bunch of card objects
    definitions = []
    terms = []
    File.open(input_file, "r") do |file|
      file.readlines.each_with_index do |line, idx|
        if (idx) % 3 == 0
          definitions << line.chomp
        elsif (idx-1) % 3 == 0
          terms << line.chomp
        end
      end
    end
    words_array = terms.zip(definitions)
  end

# p txt_parser("flashcard_samples.txt")
# p terms.zip(definitions)

end

# flashcard_file = File.open("flashcard_samples.txt")

# parsed_array_of_cards = flashcard_file.read.split("\n")

# puts parsed_array_of_cards

# deck << flashcard.new ({args go here yo!})


# ____________________________?

# FILE.foreach(filename) do |line|
#   content.push(line)
# end

# each_char
