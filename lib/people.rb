require 'csv'
require_relative 'person.rb'
#
class People
  attr_reader :people
  def initialize
    @people = []
    CSV.foreach('data/people.csv',
                headers: true,
                header_converters: -> (h) { h.downcase.to_sym }) do |person_row|
      person = {}
      person_row.headers.each do |key|
        person[key] = person_row[key]
      end
      @people << Person.new(person)
    end
  end
end
