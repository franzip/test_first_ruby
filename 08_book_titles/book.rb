class Book
  attr_reader :title

  @blacklist = ['the', 'a', 'in', 'of', 'and', 'an']

  def title=(t)
    @title = t.split.each_with_index.map do |word, idx|
      idx == 0 || !Book.blacklist.include?(word) ? word.capitalize : word
    end.join(' ')
  end

  def self.blacklist
    @blacklist
  end

end
