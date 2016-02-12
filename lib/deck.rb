require_relative 'card'

# A simple represenation of a deck of playing cards
class Deck < Array
  def initialize
    super
    replace(Card::SUITS.map do |suit|
      Card::RANKS.map { |rank| Card.new(rank, suit) }
    end.flatten)
  end

  # swap front and back somewhere in the middle third.
  def cut
    random = Random.rand(count / 3)
    cut_point = (count / 3 + random)
    replace(slice(cut_point, count - cut_point) + slice(0, cut_point))
  end

  def shuffle
    6.times do
      right = slice(count / 2, count)
      left = slice(0, count / 2)

      replace(left.zip(right).flatten.compact)
    end

    self
  end

  def draw
    shift
  end

  def deal(cards, *hands)

  end
end
