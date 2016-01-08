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
end

