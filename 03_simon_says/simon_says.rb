def echo arg
  arg
end

def shout arg
  arg.upcase
end

def repeat(arg, times = 2)
  ([arg] * times).join(' ')
end

def start_of_word(word, amount)
  word[0, amount]
end

def first_word word
  word.split.first
end

def titleize words
  blacklist = %w(and the over)
  words.split.each_with_index.map do |word, idx|
    (idx == 0 || !blacklist.include?(word)) ? word.capitalize : word
  end.join(' ')
end
