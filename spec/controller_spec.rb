require_relative '../controller.rb'

describe Controller do
  let(:controller) {Controller.new}

  describe 'the intialize method'
    it 'creates a controller object' do
      expect(controller).to be_an_instance_of(Controller)
    end
    it 'creates a flashcard deck, a current card, and a view' do
      #don't know how to do this without creating unnecessary attr methods
    end
  end

  describe 'the run_interface method' do
    it '' do
    end
  end

  describe 'the next_card method' do
    it '' do
    end
  end
end
