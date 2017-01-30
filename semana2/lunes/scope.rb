$global_var = "This is a global variable" #accesible por el método global_var aunque esté afuera del método
CONSTANT = 3.1416 #accesible por el método constant aunque esté afuera del método pero no lo puede cambiar

def global_var
  $global_var 
end

def global_var=(value)
  $global_var = value
end

def constant
  CONSTANT 
end

# def constant=(value) #no funciona
#   CONSTANT = value
# end

class DummyClass
  @@class_variable = "This is a class variable"

  def initialize
    # local_var = "this is my local var" #no es accesible por el método return_my_local_var
    @instance_var = "this is my local var" # por ser variable de instancia, es accesible por return_my_local_var
  end
  
  # Este es un getter
  def instance_var
    @instance_var
  end

  # Este es un setter
  def instance_var=(value)
    @instance_var = value
  end

  def class_variable
    @@class_variable
  end

  # Este es un setter
  def class_variable=(value)
    @@class_variable = value
  end
  #local_var está afuera del método return_my_local_var, por lo tanto, no está en su scope y no la puede accesar.
  # local_var = "this is my local var"

  def return_my_local_var
    # local_var = "holas" #pertenece al contexto local del método
    @instance_var
  end

  def global_var
    $global_var 
  end

  def global_var=(value)
    $global_var = value
  end

  def constant
    CONSTANT 
  end

  # def constant=(value) #No es posible definir un setter para la constante
  #   CONSTANT = value
  # end
  
end

puts return_my_local_var
dummy = DummyClass.new

puts dummy.return_my_local_var #regresa el valor de la variable local_var que está dentro del método

dummy_1 = DummyClass.new
dummy_2 = DummyClass.new

# son iguales:
p dummy_1.class_variable
p dummy_2.class_variable

dummy_1.class_variable = "New value for the class variable" # Esto afecta a dummy_1 y a dummy_2 porque @@class_variable es una variable de clase
p dummy_1.class_variable
p dummy_2.class_variable

p global_var
global_var = "hoolaaa"
p global_var
p constant

p dummy_1.global_var
dummy_1.global_var = "hooooooolaaa"
p dummy_1.global_var
p dummy_1.constant
p global_var