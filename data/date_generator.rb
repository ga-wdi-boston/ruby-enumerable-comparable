#
require 'date'

#
class DateGenerator
  MINIMUM_YEAR = Date.jd(Date::ENGLAND).year + 1
  MONTHS = (1..12).to_a
  THIRTY_DAY_MONTHS = [4, 6, 9, 11]
  DAYS = (1..31).to_a

  def initialize(start_year = MINIMUM_YEAR,
                 end_year = Date.today.year - 1,
                 include_end = false)
    start_year = start_year < MINIMUM_YEAR ? MINIMUM_YEAR : start_year
    end_year = end_year < start_year ? start_year : end_year
    @years = Range.new(start_year, end_year, include_end).to_a
  end

  def random_date_string
    year = @years.sample
    month = MONTHS.sample
    slice_length = 31
    slice_length = 30 if THIRTY_DAY_MONTHS.include?(month)
    slice_length = (Date.leap?(year) ? 29 : 28) if month == 2
    day = DAYS[0, slice_length].sample
    format '%4d-%02d-%02d', year, month, day
  end
end
