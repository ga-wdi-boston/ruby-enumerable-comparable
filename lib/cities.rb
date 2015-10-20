require 'csv'
require_relative 'city.rb'
#
class Cities
  attr_reader :cities
  def initialize
    @cities = []
    CSV.foreach('data/cities.csv',
                headers: true,
                header_converters: -> (h) { h.downcase.to_sym }) do |city_row|
      city = {}
      city_row.headers.each do |key|
        city[key] = city_row[key]
      end
      @cities << City.new(city)
    end
  end
end
