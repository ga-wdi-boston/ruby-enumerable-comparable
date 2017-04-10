# frozen_string_literal: true

# A simple representation of a playing card.
class Card
  include Comparable

  def <=>(other)
    suit_comparison = SUITS.index(suit) <=> SUITS.index(other.suit)
    rank_comparison = RANKS.index(rank) <=> RANKS.index(other.rank)

    if suit_comparison.zero?
      rank_comparison
    else
      suit_comparison
    end
  end

  SUITS = %w(C D H S).freeze
  RANKS = [(2..10).to_a, %w(J Q K A)].flatten.freeze

  attr_reader :suit, :rank

  def initialize(rank, suit)
    unless SUITS.include? suit
      raise ArgumentError, "Suit: '#{suit}' not in #{SUITS}"
    end
    unless RANKS.include? rank
      raise ArgumentError, "Rank: '#{rank}' not in #{RANKS}"
    end

    @suit = suit
    @rank = rank
  end

  def to_s
    "#{rank}:#{suit}"
  end
end
