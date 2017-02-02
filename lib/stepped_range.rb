# frozen_string_literal: true

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
  def initialize(start, stop, step)
    @start = start
    @stop = stop
    @step = step
  end
end
