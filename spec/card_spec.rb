require 'spec_helper'
require 'card'

describe "Card" do
  describe "#initialize" do
    context "with a rank included in rank" do
      it "takes a rank included in RANKS" do
        pending
      end
    end
    context "with a rank not included in RANKS" do
      it "raises ArgumentError" do
      end
    end
    context "with a suit included in suit" do
      it "assigns suit to @suit" do
      end
    end
    context "without a suit included in SUITS" do
      it "raises ArgumentError" do
      end
    end
  end

  describe "#<=>" do
    context "when suits are the same" do
      it "compares rank of card vs other card by index of rank in RANKS" do
        pending
      end
    end
    context "when suits are different" do
      it "compares suits of card vs other card by index of suit in SUITS" do
        pending
      end
    end

  end
end
