def canonical(word)
  word.chars.sort.join
end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

def anagrams_for(word, dictionary)
  dictionary.select { |x| canonical(word) == canonical(x) }
end

# Pruebas 
p are_anagrams?("roma", "amor")

p anagrams_for("amor", ["amor", "casa", "roma", "omar", "mora", "ramo", "armo", "maro", "hotel", "pato", "perro"])

p anagrams_for("loteria", ["amor", "casa", "roma", "omar", "mora", "ramo", "armo", "maro", "hotel", "pato", "perro"])