def gato
 gato = []
 random(gato)
 gato#.each_slice(3).to_a
end

def random(gato)
  oo = 0
  pick = "" 
  total = 0
  while total <= 8
    var = rand(2)
    if var == 1 && oo <= 4 
      gato << "O"
      oo +=1
      total += 1
    else
      gato << "X"
      total += 1
    end
  end
end

p gato
p gato
p gato
p gato
p gato
p gato
p gato

