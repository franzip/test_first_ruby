def translate word
  word.split.map do |w|
    transform(w)
  end.join(' ')
end

def transform word
  if (word =~ /^([aeiou]+)(.*)/)
    return word + 'ay'
  end
  if (word =~ /^([^aeiou]*)(qu)(.*)/)
    return $3 + $1 + $2 + 'ay'
  end
  word.sub(/^([^aeiou]+)(.*)/, '\2\1') + 'ay'

end
