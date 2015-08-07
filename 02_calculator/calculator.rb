def add n1, n2
  n1 + n2
end

def subtract n1, n2
  n1 - n2
end

def sum arr
  arr.reduce(0, :+)
end

def multiply arr
  arr.reduce(1, :*)
end

def power(base, exp)
  base**exp
end

def factorial n
  n < 2 ? 1 : n * factorial(n - 1)
end
