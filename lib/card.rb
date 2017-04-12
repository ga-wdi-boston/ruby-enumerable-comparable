# frozen_string_literal: true

# A simple representation of a playing card.
class Card
  SUITS = %w[C D H S].freeze
  RANKS = (2..14).to_a.freeze

  attr_reader :suit, :rank

  def initialize(rank, suit)
    case rank
    when "J"
      rank = 11
    when "Q"
      rank = 12
    when "K"
      rank = 13
    when "A"
      rank = 14
    else
      rank = rank.to_i
    end

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

  def >(other_card)
    if rank > other_card.rank
      true
    elsif rank == other_card.rank
      if suit == "S" && other_card.suit != "S"
        true
      else
        false
      end
    else
      false
    end
  end
end
