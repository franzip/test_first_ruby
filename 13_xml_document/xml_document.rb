class XmlDocument

  def initialize(indent = false)
    @indent       = indent
    @indent_depth = 0
  end

  def method_missing name, *args, &block
    res = ""
    res << ("  " * @indent_depth) if @indent
    res << "<#{name}"
    attrs = build_attr(args[0] || {})
    res << " #{attrs}" if !attrs.empty?
    
    if block_given?
      res << ">"
      @indent_depth += 1
      res << "\n" if @indent
      res << block.call
      @indent_depth -= 1
      res << ("  " * @indent_depth) if @indent
      res << "</#{name}>"
      res << "\n" if @indent
    else
      res << "/>"
      res << "\n" if @indent
    end
    res
  end

  def build_attr hash
    hash.map { |k, v| "#{k}=\'#{v}\'" }.join
  end

end
