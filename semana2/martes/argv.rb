def single_word(word)
  if word[0] =~ /[aeiou]/i
    word + "way"
  else
    if word.split(/([aeiou].*)/).length > 1
      word.split(/([aeiou].*)/)[1] + word.split(/([aeiou].*)/)[0] + "ay"
    else
      word.split(/([aeiou].*)/)[0]
    end
  end
end

def sentence
  ARGV.map { |word| single_word(word) }.join(' ')
end

puts sentence