require_relative 'parseable'
require_relative 'card'


class FlashCardDeck
  include Parseable

  attr_accessor :selected_card, :deck

  def initialize(file)
    card_array = parse_cards_from_file(file)
    @deck = card_array.map {|card_info| Card.new(card_info)}
  end

  def select_card
    @selected_card = @deck.sample
  end

  def remove_card(card)
    @deck.delete(card)
  end

  def empty?
    @deck.length == 0 ? true : false
  end

end
