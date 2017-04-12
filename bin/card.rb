# frozen_string_literal: true


require_relative '../lib/card.rb'

# Compare cards. Is one greater than the other?

usage = "Call this script with two sets of arrays. For example: ruby bin/card.rb 7 'H' 'A' 'S'"
unless ARGV.length == 4
  p usage
  p "Args.length was #{ARGV.length}"
  exit
end 
rank1 = ARGV[0]
suit1 = ARGV[1]

rank2 = ARGV[2]
suit2 = ARGV[3]

card1 = Card.new(rank1, suit1)
card2 = Card.new(rank2, suit2)

# Implement > in card.rb
p card1 > card2


