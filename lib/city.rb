#
class City
  def initialize(h)
    h.keys.each do |key|
      instance_variable_set(('@' + key.to_s).to_sym, h[key])
      self.class.send(:attr_reader, key) unless self.class.method_defined? key
    end
  end
end
