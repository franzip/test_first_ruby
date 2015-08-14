class RPNCalculator

  @@tokens = ['+', '-', '*', '/']

  def initialize
    @stack = []
  end

  def push num
    @stack << num
  end

  def plus
    check
    @stack << get_operands.reduce(:+)
  end

  def minus
    check
    second, first = get_operands
    @stack << first - second
  end

  def divide
    check
    second, first = get_operands
    @stack << first.to_f / second
  end

  def times
    check
    @stack << get_operands.reduce(:*)
  end

  def tokens str
    str.split.map do |el|
      @@tokens.include?(el) ? el.to_sym : el.to_i
    end
  end

  def evaluate str
    tokens(str).each do |s|
      case s
      when :+
        self.plus
      when :-
        self.minus
      when :*
        self.times
      when :/
        self.divide
      else
        self.push s
      end
    end
    self.value
  end

  def value
    @stack.last
  end

  private

  def get_operands
    [@stack.pop, @stack.pop]
  end

  def check
    raise "calculator is empty" if @stack.length == 0
  end
end
