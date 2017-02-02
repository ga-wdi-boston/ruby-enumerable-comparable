# frozen_string_literal: true

require_relative 'card'

# A simple represenation of a deck of playing cards
class Deck
  attr_reader :deck
  private :deck

  def initialize
    @deck = Card::SUITS.map do |suit|
      Card::RANKS.map { |rank| Card.new(rank, suit) }
    end.flatten
  end

  # swap front and back somewhere in the middle third.
  def cut
    count = deck.length
    random = Random.rand(count / 3)
    cut_point = (count / 3 + random)
    deck.replace deck.slice(cut_point, count - cut_point) +
                 deck.slice(0, cut_point)
  end

  def draw
    @deck.shift
  end

  def shuffle
    @deck.shuffle!
    self
  end

  def deal(cards, *hands); end
end
