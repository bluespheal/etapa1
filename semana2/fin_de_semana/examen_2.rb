#Athlete class
class Athlete
  attr_reader :speed_record
  attr_accessor :total_time, :total_distance

   def initialize(total_distance = 0, time = 0)
    @total_distance = total_distance
    @time = time
    @speed = 0 
  end

  #método para validar tiempo
  def time
    @time
  end
 
  #msétodo para hacer ejercicio
  def new_workout(total_distance, time)
    @total_distance += total_distance
    @time += time
  end

  #método para obtener velocidad del atleta
  def speed
    if @time == 0
      @speed = 0
    else
      @speed = @total_distance.to_f/@time.to_f
      @speed = '%.2f' % @speed
    end
  end

end

#Runner class
class Runner < Athlete

  def run
    speed
    "Ran #{@total_distance} meters, time: #{@time} seconds, speed: #{@speed} m/s"
  end
end

#Swimmer class
class Swimmer < Athlete

  def swim
    speed
    "Swam #{@total_distance} meters, time: #{@time} seconds, speed: #{'%.1f' % @speed} m/s"
  end
end

#Cyclist class
class Cyclist < Athlete
  def ride_bike
    speed
    "Rode bike #{@total_distance} meters, time: #{@time} seconds, speed: #{'%.0f' % @speed} m/s"
  end
end


#tests

#instancias de atletas con distancia en metros
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)

athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
  #¿qué tipo de atleta es?
  puts "#{athlete.class} responds to:"
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end

#test for runner

#test para runner con distancia = 0
p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
#test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
runner.new_workout(20, 7) 
#test para runner con distancia = 20 metros y tiempo = 7 segundos
p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

#test para swimmer con distancia = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"