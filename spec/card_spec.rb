require_relative '../card'

describe Card do
  let(:card) {Card.new({:term => 'MVC', :definition => 'model view controller'})}

  describe 'the initialize method' do
    it 'creates a card object' do
      expect(card).to be_an_instance_of(Card)
    end

    it 'creates a card with initial values' do
      expect(card.term).to eq('MVC')
      expect(card.definition).to eq('model view controller')
      expect(card.attempts).to eq(0)
    end
  end

  describe 'the attempt method' do
    it 'updates the attempts by adding 1' do
      expect{card.attempt}.to change{card.attempts}.from(0).to(1)
    end
  end
end
