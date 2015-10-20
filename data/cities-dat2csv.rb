#
require 'csv'
keys = %w(Population Name Country Region Longitude Latitude)

cities = []

File.open(ARGV[0] || 'miscfiles/cities.dat') do |file|
  city = {}
  type = ''
  population = 0
  file.each do |line|
    line.chomp!
    fields = line.split(':').map(&:strip)
    type = fields.last if fields.first == 'Type'
    population = fields.last.to_i if fields.first == 'Population'
    if line == '//'
      cities << city if type == 'City' && population > 0
      city = {}
    elsif keys.include? fields.first
      key = fields.first.downcase
      value = fields.last
      value = nil if value.empty?
      city[key] = value
    end
  end
end

CSV.open(ARGV[1] || 'cities.csv', 'wb',
         write_headers: true,
         headers: keys.map(&:downcase)) do |csv|
           cities.each { |city| csv << city }
         end
