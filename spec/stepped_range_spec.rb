require 'stepped_range'

describe 'SteppedRange' do
  let(:start) {1}
  let(:stop) {10}
  let(:step) {2}
  let(:stepped_range) {SteppedRange.new(start,stop,step)}

  describe '#initialize' do
    it "takes start, stop and step" do
      expect(stepped_range).to be_a SteppedRange
    end
  end

  describe '#each' do
    it "yields the current while current <= stop" do
    end
    it "increases current by step each iteration" do
      output = []
      stepped_range.each do |num|
        output << num
      end
      expect(output).to eq [1,3,5,7,9]
    end
  end
end
