# Script: Single word converter to Pig Latin

# GET a word from user input
# IF the word starts with a vowel, add "way" to the end
# ELSE replace the word with its pig latin equivalent
#   GET all of the consonants before the first vowel in the word
#   SET the consonants at the end of the word and add "ay"
# ENDIF
# RETURN the pig-latin word

def pig_latin_word
  word = gets.chomp
  if word.downcase =~ /\A[aeiou]/
    word = word + "way"
  else
    con = word.slice!(/([bcdfghjklmnpqrstwxyz]|[bcdfghjklmnpqrstwxyz]{2})(?=[aeiou])/i)
    word = word + con + "ay"
  end
  word
end


# Script : Multiple word converter to Pig Latin

# create new empty array final
# EACH word from sentence
# IF the word starts with a vowel, add "way" to the end and push to final
# ELSE replace teh word with its pig latin equivalent
#   GET all the consonants before the first vowel in the word
#   SET the consonants at the end of the word and add "ay" and push to final
# ENDIF
# RETURN the pig-latin sentence

def pig_latin_sentence
  final = [] 
  ARGV.inspect.split(" ").each {|word| 
    if word.to_s.downcase =~ /\A[aeiou]/
      final << word + "way"
    else
      con = word.slice!(/([bcdfghjklmnpqrstwxyz]|[bcdfghjklmnpqrstwxyz]{2})(?=[aeiou])/i)
      final << word + con + "ay"
    end
  }
  final.join(" ")
end

# p pig_latin_word

p pig_latin_sentence