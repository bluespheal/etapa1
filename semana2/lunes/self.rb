puts "self es igual a: #{self}" # self es main porque no estamos dentro de un método o una clase

class DummyClass
  puts "Esto esta corriendo cuando se define la clase"
  puts "En este contexto self es igual a: #{self}"# self es la clase porque no está dentro de un método ni depende de que se cree una instancia de la clase

  def intance_method
    puts "Dentro de un método de instancia"
    puts "En este contexto self es igual a: #{self}" # self es el id de la instancia 
  end

  def self.class_method
    puts "Dentro de un método de clase"
    puts "En este contexto self es igual a: #{self}" # self es la clase porque está dentro de un método de clase(self.)
  end

end

dummy_class = DummyClass.new()
puts dummy_class.intance_method # self es llamado desde la instancia 

puts DummyClass.class_method # self es llamado desde la clase  