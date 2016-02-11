#
class SteppedRange
  include Enumerable

  def each
    current = start

    while current <= stop
      yield current
      current += step
    end
  end

  attr_reader :start, :stop, :step
  private :start, :stop, :step

  def initialize(start:, stop:, step: 1)
    @start, @stop, @step = start, stop, step
  end
end
