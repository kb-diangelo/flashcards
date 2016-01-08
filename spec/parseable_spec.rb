require_relative '../parseable.rb'
require_relative '../flashcard_deck.rb'

describe 'the Parseable module' do
  let(:test_deck) {Deck.new('text_for_spec_tests.txt')}

  describe 'the parse_cards_from_file method' do

    it 'returns an array' do
      expect(Parseable.parse_cards_from_file('text_for_spec_tests.txt')).to be_an_instance_of(Array)
    end

    it 'the objects in that array are hashes' do
    end

    it 'makes as many hashes as there are cards in the file' do
    end


  end
end
