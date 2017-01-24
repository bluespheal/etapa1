# Script: Single word converter to Pig Latin

# GET a word from user input
# IF the word starts with a vowel, add "way" to the end
# ELSE replace the word with its pig latin equivalent
#   GET all of the consonants before the first vowel in the word
#   SET the consonants at the end of the word and add "ay"
# ENDIF
# RETURN the pig-latin word

def pig_latin_word(word)
  word = gets.chomp
  word =~ /\A[aeiou]/ ? word + "way" : "hola"
end

# Script : Multiple word converter to Pig Latin

# GET a sentence from user input
# each word from sentence
# IF the word starts with a vowel, add "way" to the end
# ELSE replace teh word with its pig latin equivalent
#   GET all the consonants before the first vowel in the word
#   SET the consonants at the end of the word and add "ay"
# ENDIF
# RETURN the pig-latin sentence