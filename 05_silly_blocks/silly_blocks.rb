def reverser
  yield.split.each.map(&:reverse).join(' ')
end

def adder(arg = 1)
  yield + arg
end

def repeater (arg = 1, &block)
  arg.times { block.call }
end
