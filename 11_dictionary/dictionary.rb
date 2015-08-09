class Dictionary
  
  attr_accessor :entries, :keywords

  def initialize
    @entries  = {}
    @keywords = []
  end

  def add ele
    ele.is_a?(Hash) ? @entries.merge!(ele) : @entries[ele] = nil
    ele.is_a?(Hash) ? @keywords += ele.keys : @keywords << ele
    @keywords.sort!
  end

  def include? keyword
    @keywords.include?(keyword)
  end

  def find keyword
    res = {}
    @entries.each do |k, v|
      res[k] = v if k =~ /^#{keyword}/
    end
    res
  end

  def printable
    res = []
    @entries.keys.sort.each do |key|
      res << "[" + key + "]" + " \"" + @entries[key] + "\""
    end
    res.join("\n")
  end
end
