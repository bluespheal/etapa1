def diccionary_sort
  string = "hola"
  dictionary = []
  until string.empty?
    p 'Escribe otra palabra(o presiona "enter" para finalizar):'
    string = gets.chomp
    dictionary << string if string != "" && !(string.match(" ")) && !(string.count("0-9") > 0)
  end
  puts "Felicidades! Tu diccionario tiene #{dictionary.length} palabras: "
  puts dictionary.sort_by { |word| word.downcase }
end

diccionary_sort
