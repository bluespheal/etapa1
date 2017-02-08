class DeafGrandma
  
  def initialize
    @respuesta = gets.chomp
    @contador = 1
  end
  
  def speak
    while @contador < 3
      if @respuesta.upcase == @respuesta && @respuesta != "BYE TQM"
        gritar
      elsif @respuesta == "BYE TQM"
        despedirse
      else
        normal
      end
    end
  end

  def normal
    p "HUH?! NO TE ESCUCHO, HIJO!"
    @respuesta = gets.chomp
  end

  def gritar
    p "NO, NO DESDE 1983"
    @respuesta = gets.chomp
  end

  def despedirse
    p "NO, NO DESDE 1983"
    @contador += 1
    @respuesta = gets.chomp
  end

end

deaf_grandma = DeafGrandma.new
deaf_grandma.speak