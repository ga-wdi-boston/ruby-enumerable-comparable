require 'csv'

name_count = [ARGV.length == 0 ? 100 : ARGV[0].to_i, 1200].min

months = (1..12).to_a.map { |mn| format '%02d', mn }
days = (1..28).to_a.map { |dn| format '%02d', dn }
years = (1940..2014).to_a.map(&:to_s)

surnames = []

File.open('surname.txt') do |file|
  file.each_with_index do |line, index|
    surnames << line.split.first.capitalize if index < name_count
  end
end

people = []

File.open('female.txt') do |file|
  file.each_with_index do |line, index|
    people << {
      given_name: line.split.first.capitalize,
      gender: 'f'
    } if index < name_count
  end
end

File.open('male.txt') do |file|
  file.each_with_index do |line, index|
    people << {
      given_name: line.split.first.capitalize,
      gender: 'm'
    } if index < name_count
  end
end

CSV.open('people.csv', 'wb',
         write_headers: true,
         headers: %w(surname given_name gender dob)) do |csv|
           0.upto(people.length).each do ||
             person = people.sample
             csv << [
               surnames.sample,
               person[:given_name],
               person[:gender],
               years.sample + months.sample + days.sample]
           end
         end
