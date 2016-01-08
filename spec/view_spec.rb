require_relative '../view'

describe View do
  let(:view) {View.new}

  describe 'the input method' do
    it 'returns the input' do
     #not sure how to test this
    end
  end

  describe 'the get_file method' do
    it do 'returns the ARGV input'
      expect(view.get_file).to eq(ARGV)
      expect(view.get_file).to be_an_instance_of(Array)
    end
  end

  describe 'the display method' do
    it 'returns nil' do
      expect(view.display("My String")).to eq(nil)
    end
    it 'puts the output to the screen' do
      #not sure how to test this
    end
  end
end
