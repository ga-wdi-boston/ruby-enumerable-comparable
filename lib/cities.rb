require 'csv'
require_relative 'city.rb'
#
class Cities
  attr_reader :cities
  def initialize
    @cities = []
    CSV.foreach('data/cities.csv',
                headers: true,
                header_converters: -> (h) { h.downcase.to_sym }) do |city|
      @cities << City.new(city.to_hash)
    end
  end
end
