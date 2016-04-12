# A simple representation of a playing card.
class Card
  SUITS = %w(C D H S).freeze
  RANKS = [(2..10).to_a, %w(J Q K A)].flatten

  attr_reader :suit, :rank

  def initialize(rank, suit)
    fail ArgumentError,
         "Suit: '#{suit}' not in #{SUITS}" unless SUITS.include? suit
    fail ArgumentError,
         "Rank: '#{rank}' not in #{RANKS}" unless RANKS.include? rank

    @suit = suit
    @rank = rank
  end

  def to_s
    "#{rank}:#{suit}"
  end
end
