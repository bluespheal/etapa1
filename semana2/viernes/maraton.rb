require 'csv'

def hola
  p "hola, vamos a jugar maratón :O"
  contador = 0
  buenas = 0
  malas = 0
  array = CSV.read("preguntas.csv")
  while contador < array.length
    p "Pregunta: #{array[contador].join(" ")}"
    contador += 1
    respuesta = gets.chomp
    if respuesta == array[contador].join(" ")
      p "Respuesta: #{respuesta}"
      p "bien :D"
      buenas += 1
    else
      "Respuesta: #{respuesta}"
      p "mal :("
      malas += 1
    end
    contador += 2
  end
  p "buenas: #{buenas}"
  p "malas: #{malas}"
end

hola

# p 'hola, vamos a jugar maratón :O'
# p 'Pregunta: #{preguntas.csv[0]}'
# respuesta = gets.chomp
# p "respuesta: #{respuesta}"
# if respuesta == preguntas.csv[1]
#   correctas += 1
#   p "Correcto!"
# else
#   incorrectas +=1
#   p "Incorrecto :("
# end
# preguntas.csv[1]+2

# p "correctas : #{correctas}"
# p "incorrectas: #{incorrectas}"

