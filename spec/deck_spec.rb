require 'spec_helper'
require 'card'
require 'deck'

describe "Deck" do
  let(:deck) {Deck.new}
  describe "#initialize" do
    it "sets up the deck with an array of cards as combined from Card::SUITS and Card::RANKS" do
      # private 
      expect(deck.send(:storage).length).to eq 52
    end

  end

  describe "#cut" do
    it "randomizes the cards in the deck" do
      # actually puts front and back card somewhere in the middle
      orig_deck = deck
      expect(deck.cut.draw).not_to eq(orig_deck.draw)
    end
    it "returns the deck" do
      expect(deck.cut.object_id).to eq deck.object_id
    end
  end

  describe "#shuffle" do
    it "randomizes the cards in the deck" do
      orig_deck = deck
      expect(deck.shuffle.draw).not_to eq(orig_deck.draw)
    end
  end

  describe "#deal" do
    it "takes 2 params, num cards per hand and variable amount of hands arrays" do
    end
  end
end

