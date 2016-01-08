require_relative 'flashcard_deck'
require_relative 'view'

class Controller

  def initialize
    @view = View.new
    @flashcard_deck = FlashCardDeck.new('short.txt')
    @current_card = @flashcard_deck.select_card
    run_interface
  end

  def run_interface
    @view.intro
    @view.display(@current_card.definition)

    until @flashcard_deck.empty? || (input = @view.input) == "exit"

      if input != @current_card.term
        @current_card.attempt
        attempts = @current_card.attempts
        @view.wrong_guess(attempts)
      else
        @flashcard_deck.remove_card(@current_card)
        @view.right_guess
      end

      next_card
    end

    @view.goodbye
  end

  def next_card
    unless @flashcard_deck.empty?
      @view.next_question
      @current_card = @flashcard_deck.select_card
      @view.display(@current_card.definition)
    end
  end

end

Controller.new
