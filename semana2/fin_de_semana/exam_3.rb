PISTA = 100

#RaceCar class
class RaceCar
  attr_reader :name, :speed
  def initialize (name, time1, time2, time3, time4, time5, speed = 0)
    @name = name
    @time1 = time1
    @time2 = time2
    @time3 = time3
    @time4 = time4
    @time5 = time5
    @speed = 0
  end

  #método para obtener velocidad promedio
  def average_speed
    @speed = ((PISTA/@time1 + PISTA/@time2 + PISTA/@time3 + PISTA/@time4 + PISTA/@time5)/5)
    @speed = '%.2f' % speed
    @speed = @speed.to_f
  end 

  #método que muestra nivel de cada race car
  def level
    case @speed
    when 1..3 then "N00B"
    when 3..10 then "Principiante"
    when 10..14 then "Intermedio"
    else "Experto"
    end
  end

end

#Team class
class Team 
  attr_reader :team
  def initialize(team)
    @team = team
  end

  #método para agregar nuevo race car
  def add_race_car(race_car)
    @team << race_car
  end

  #método para calcular promedio de velocidad del equipo
  def average_speed_of_team
    total_speed = 0
    @team.each{ |x|
      total_speed += x.speed.to_f
    }
    total_speed = '%.2f' % (total_speed/@team.length)
  end

end

#método para buscar race car
def search(car_name, team)
  team.team.map{|name|
   return "#{car_name} is a racer" if name.name == car_name
  }

end

#método para generar la tabla
def generate_table(team)
  header = ["Name", "Nivel"]
  puts header_s = "|#{header[0].center(15)}|#{header[1].center(15)}|"
  print "-"*header_s.length + "\n"
  team.team.each{|x|
    puts "|#{x.name.center(15)}|#{x.level.center(15)}|"
  }

end

#método para mostrar nombre y nivel del race car
def get_on_my_level(race_car)
  puts "#{race_car.name} es nivel: #{race_car.level}"

end

#instancias de RaceCar
car1 = RaceCar.new("Blue Falcon", 12.1, 11.4, 13.7, 9.9, 8.3)
car2 = RaceCar.new("Clownkart", 10.2, 9.3, 10.0, 11.2, 8.1)
car3 = RaceCar.new("Royal Pink", 8.7, 7.5, 7.2, 8.8, 7.6)
car4 = RaceCar.new("Eggspresso", 5.0, 4.9, 6.5, 7.1, 5.7)
car5 = RaceCar.new("Power", 7.5, 6.9, 3.8, 6.3, 7.4)
car6 = RaceCar.new("Meh", 17.4, 18.8, 15.7, 17.9, 18.3)


#tests

p "car1: #{car1.average_speed} m/s"
#ej. car1: 9.5 m/s
p "car2: #{car2.average_speed} m/s"
#ej. car2: 12.01 m/s
p "car3: #{car3.average_speed} m/s"
#ej. car3: 10.65 m/s
p "car4: #{car4.average_speed} m/s"
#ej. car4: 11.0 m/s
p "car5: #{car5.average_speed} m/s"
#ej. car5: 10.15 m/s
p "car6: #{car6.average_speed} m/s"
#ej. car6: 15.51 m/s

#create a team of cars 
team1 = [car1, car2, car3, car4, car5]
team_one = Team.new(team1)

#test para buscar race car en equipo team_one
p search("Power", team_one) == "Power is a racer"

#calculate average speed of team
p team_one.average_speed_of_team
#ej. 10.66 


#método para mostrar nombre y nivel del race car
get_on_my_level(car1)

generate_table(team_one)