#
require 'date'
#
class Person
  def initialize(h)
    h.keys.each do |key|
      instance_variable_set(('@' + key.to_s).to_sym, h[key])
      self.class.send(:attr_reader, key)
    end
  end

  def age
    dob = Date.parse(@dob)
    today = Date.today
    if dob.month > today.month ||
       dob.month == today.month && dob.day >= today.day
      today <<= 12 # one year younger
    end
    today.year - dob.year
  end
end
