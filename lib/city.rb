#
class City
  def initialize(h)
    h.keys.each do |key|
      instance_variable_set(('@' + key.to_s).to_sym, h[key])
      self.class.send(:attr_reader, key)
    end
  end
end
