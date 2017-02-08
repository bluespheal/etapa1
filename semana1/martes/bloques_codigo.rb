def time
  yield
  sleep 1
  yield  
end

time { p Time.now}

def single_word(word)
  yield
  if word[0] =~ /[aeiou]/i
    word + "way"
  else
    # nueva condicionante para palabras de puras consonantes sin vocales. ej: by
    if word.split(/([aeiou].*)/).length > 1
      # Parte palabra en 2 y lo mete en un array. 1er elemento es de consonat(es) iniciales, 2o la parte restante de la palabra a partir de e incluyendo la primera vocal
      word.split(/([aeiou].*)/)[1] + word.split(/([aeiou].*)/)[0] + "ay"
    else
      word.split(/([aeiou].*)/)[0]
    end
  end
  yield
end

single_word("apple") { p Time.now }