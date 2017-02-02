# frozen_string_literal: true

#
class SteppedRange
  attr_reader :start, :stop, :step
  private :start, :stop, :step
  def initialize(start, stop, step)
    @start = start
    @stop = stop
    @step = step
  end
end
