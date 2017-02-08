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