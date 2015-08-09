class Temperature

  def initialize hash
    @fahrenheit = hash[:f] || Temperature.ctof(hash[:c])
    @celsius    = hash[:c] || Temperature.ftoc(hash[:f])
  end

  def in_fahrenheit
    @fahrenheit
  end

  def in_celsius
    @celsius
  end

  def self.from_celsius celsius
    self.new(c: celsius)
  end

  def self.from_fahrenheit fahrenheit
    self.new(f: fahrenheit)
  end

  def self.ftoc fahrenheit
    @celsius = (fahrenheit - 32) * (5.to_f / 9)
  end

  def self.ctof celsius
    @fahrenheit = (celsius * 9.to_f / 5) + 32
  end
end

class Celsius < Temperature

  def initialize celsius
    super(c: celsius)
  end
end

class Fahrenheit < Temperature
  def initialize fahrenheit
    super(f: fahrenheit)
  end
end
