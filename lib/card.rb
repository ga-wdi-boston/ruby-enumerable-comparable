# A simple representation of a playing card.
class Card
  include Comparable

  def <=>(other)
    return suit_comparison(other) if rank_comparison(other) == 0
    rank_comparison(other)
  end

  def suit_comparison(other)
    SUITS.index(suit) <=> SUITS.index(other.suit)
  end
  private :suit_comparison

  def rank_comparison(other)
    RANKS.index(rank) <=> RANKS.index(other.rank)
  end
  private :rank_comparison

  SUITS = %w(C D H S).freeze
  RANKS = [(2..10).to_a, %w(J Q K A)].flatten

  attr_reader :suit, :rank

  def initialize(rank, suit)
    raise ArgumentError,
          "Suit: '#{suit}' not in #{SUITS}" unless SUITS.include? suit
    raise ArgumentError,
          "Rank: '#{rank}' not in #{RANKS}" unless RANKS.include? rank

    @suit = suit
    @rank = rank
  end

  def to_s
    "#{rank}:#{suit}"
  end
end
