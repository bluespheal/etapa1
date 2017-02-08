def gato_one
 gato = []
 random(gato)
 gato.shuffle.each_slice(3).to_a.each{|x|p x}
end

def random(gato)
  num_o = rand(4..5)
  num_o.times {gato << "O"}
  num_x = 9 - num_o
  num_x.times {gato << "X"}
end

p gato_one[2][2]

def gato_two
  gato = []
  random(gato)
  gato = gato.shuffle
  que_sera = Array.new(3) { gato.pop(3) }  
  que_sera.each { |x| p x } 
end

p gato_two[2][2]

def table
  tabla = [["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"],
   ["Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]],
   ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]],
   ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]],
   ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]],
   ["Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]]
  ]

  new_array = []
  k = 1
  while k < tabla.length
    j = 0
    while j < 5
      new_array << [tabla[0][j],tabla[k][j]]
      j += 1 
    end
    k += 1
  end

  super_array = []
  super_array << new_array.first(5).to_h
  super_array << new_array.first(10).to_h
  super_array << new_array.first(15).to_h
  super_array << new_array.first(20).to_h
  super_array << new_array.first(25).to_h
  p super_array
end

table