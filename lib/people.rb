require 'csv'
require_relative 'person.rb'
#
class People
  attr_reader :people
  def initialize
    @people = []
    CSV.foreach('data/people.csv',
                headers: true,
                header_converters: -> (h) { h.downcase.to_sym }) do |person|
      @people << Person.new(person.to_hash)
    end
  end
end
