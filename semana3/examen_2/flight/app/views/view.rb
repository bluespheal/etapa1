class View

  def start
    puts "Bienvenido a Vuelos Codea"
    print "-"*50 + "\n"
    puts "1) Reservaciones"
    puts "2) Administrador"
    puts "3) Salir" + "\n\n"

    puts "Selecciona opción: "

  end

  def admin
    puts "Bienvenido Administrador"
    print "-"*50 + "\n"
  end

  def admin_menu
    puts "Bienvenido Administrador"
    print "-"*50 + "\n"
    puts "1) Muestra todos los vuelos"
    puts "2) Muestra todas las reservaciones"
    puts "3) Crea un nuevo vuelo " 
    puts "4) Salir" + "\n\n"
    puts "Selecciona opción: "
  end

  def res_menu
    print "-"*50 + "\n"
    puts "¡¡¡Bienvenido!!!".center(50)    
    print "-"*50 + "\n"
    puts "1) Encuentra tu boleto de avión"
    puts "2) Salir" + "\n\n"
    puts "Selecciona opción: "
  end

  def find_flight
    print "-"*50 + "\n"
    puts "¡¡¡Encuentra tu vuelo!!!".center(50)    
    print "-"*50 + "\n"
  end

  def find_flight_deep(found_flights, from, to, date, passengers)
    puts "Vuelos disponibles From: #{from} To: #{to}"
    
    found_flights.each do |result|
      if result["from"] == from && result["to"] == to && "#{result["date"]}" == date
        print "-"*80 + "\n"
        puts "#{result["id"]}) No Vuelo: #{result["num_flight"].to_i}"
        puts "Date: #{result["date"]}, Depart: #{result["depart"]} From: #{result["from"]}"
        puts "To: #{result["to"]}, Duration: #{result["duration"]}, Precio: #{result["cost"]}, Lugares: #{(50 - result["passengers"]).to_i}"
      end

    end
  end

  def book(flight)
    print "-"*80 + "\n"
    puts "Número de Vuelo Seleccionado: #{flight["num_flight"].to_i}"
    print "-"*80 + "\n"
    puts "Date: #{flight["date"]}, Depart: #{flight["depart"]}"
    puts "From #{flight["from"]}, To: #{flight["to"]}, Duration: #{flight["duration"]}, Precio: #{flight["cost"]}"
    print "-"*80 + "\n"
  end

  def recibo(rand, pass, price)
    print "*"*50 + "\n"
    puts "Reservación correcta"
    print "*"*50 + "\n\n"
    puts "El costo total es de $#{pass * price.to_i}"
    puts "Y tu ID de reservación es la siguiente #{rand}"
  end

  def add_flight
  print "*"*50 + "\n"
  puts "Se va a Crear un nuevo vuelo!"
  print "*"*50 + "\n"
  end

  def index_users(users)
    users.each do |user|
      print "-"*80 + "\n"
      puts "#{user["id"]}) Nombre de Usuario: #{user["name"]}"
      puts "E-mail: #{user["email"]}"
      puts "###Administrador###" if user["admin"] == true
    end
  end

  def index_booking(books)
    books.each do |book|
      print "-"*80 + "\n"
      puts "#{book["id"]}) Número de Reservación: #{book["num_booking"]}"
      puts "Total : #{book["total"]}"
      puts "Id de vuelo #{book["flight_id"]}"
    end
  end

	def index_flights(flights)
    flights.each do |flight|
      print "-"*80 + "\n"
      puts "#{flight["id"]}) No Vuelo: #{flight["num_flight"].to_i}"
      puts "Date: #{flight["date"]}, Depart: #{flight["depart"]} From: #{flight["from"]}"
      puts "To: #{flight["to"]}, Duration: #{flight["duration"]}, Precio: #{flight["cost"]}, Lugares: #{(50 - flight["passengers"]).to_i}"
    end
	end

end
