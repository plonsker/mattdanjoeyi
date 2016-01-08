require_relative '../source/controller'
require_relative '../source/deck'
require_relative '../source/parsable'
require_relative '../source/card'
require_relative '../source/view'

# describe Controller do
#   let(:controller) { Controller.new }
#   it 'should have attributes of :my_deck and :myview' do
#     expect(controller.my_deck).to be_an_instance_of(Deck)
#   end
# end

describe Card do
  let(:card) { Card.new({definition: "blah", word: "blah2", answered: false, card_id: 1 })}
  it 'should have a definition' do
    expect(card.definition).to eq("blah")
  end

  it 'should have a word' do
    expect(card.word).to eq("blah2")
  end

  it 'should have an answer' do
    expect(card.answered).to eq(false)
  end

  it 'should have an ID' do
    expect(card.card_id).to eq(1)
  end

    it 'should have a correct method' do
    expect(card.correct?("yada")).to eq(false)
  end

    it 'should have a to_s method' do
    expect(card.to_s).to be_an_instance_of(String)
  end
end

# describe Controller do
#   let(:controller) { Controller.new({definition: "blah", word: "blah2", answered: false, card_id: 1 })}
#   it 'should have a definition' do
#     expect(card.definition).to eq("blah")
#   end

#   it 'should have a word' do
#     expect(card.word).to eq("blah2")
#   end

#   it 'should have an answer' do
#     expect(card.answered).to eq(false)
#   end

#   it 'should have an ID' do
#     expect(card.card_id).to eq(1)
#   end

#     it 'should have a correct method' do
#     expect(card.correct?("yada")).to eq(false)
#   end

#     it 'should have a to_s method' do
#     expect(card.to_s).to be_an_instance_of(String)
#   end
# end
