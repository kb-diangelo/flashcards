require_relative '../flashcard_deck'
require_relative '../card'

describe FlashCardDeck do
  let(:deck) {FlashCardDeck.new('text_for_spec_tests.txt')}

  describe 'the initialize method' do
    it 'creates a FlashCardDeck object' do
      expect(deck).to be_an_instance_of(FlashCardDeck)
    end
    it 'initializes the FlashCardDeck with a deck of Card objects' do
      expect(deck.deck).to be_an_instance_of(Array)
      expect(deck.deck[0]).to be_an_instance_of(Card)
    end
  end

  describe 'the select_card method' do
    it 'sets the selected card to one from the deck array' do
      deck.select_card
      expect(deck.deck.include?(deck.selected_card)).to eq(true)
    end
  end

  describe 'the remove_card method' do
    it 'decrements the deck by one card' do
      deck.select_card
      expect{deck.remove_card(deck.selected_card)}.to change{deck.deck.length}.from(2).to(1)
    end
  end

  describe 'the empty? method' do
    it 'returns false if the deck contains at least one card' do
      expect(deck.empty?).to eq(false)
    end
    it 'returns true if the deck contains no cards' do
      deck.select_card
      deck.remove_card(deck.selected_card)
      deck.select_card
      deck.remove_card(deck.selected_card)
      expect(deck.empty?).to eq(true)
    end
  end

end
