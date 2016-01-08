class Card

  attr_reader :term, :definition, :attempts

  def initialize(args = {})
    @term = args.fetch(:term, nil)
    @definition = args.fetch(:definition, nil)
    @attempts = 0
  end

  def attempt
    @attempts += 1
  end

end
