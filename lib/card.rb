# frozen_string_literal: true

# A simple representation of a playing card.
class Card
  SUITS = %w[C D H S].freeze
  RANKS = [(2..10).to_a, %w[J Q K A]].flatten.freeze

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
