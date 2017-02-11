class Controller 
  def initialize(args)
    @view = View.new
    @args = args
    send(args[0])

    @from = ""
    @to = ""
    @date = ""
    @passengers = ""
  end

  def bienvenida
    @view.start 
    opcion = STDIN.gets.chomp
    case opcion
    when "1" then reservaciones
    when "2" then administrador
    when "3" then p "Nos vemos :)"
    end
  end

  def administrador
    @view.admin
    puts "Ingrese usuario:" + "\n"
    usuario = STDIN.gets.chomp
    puts "Ingrese contraseña:" "\n"
    contraseña = STDIN.gets.chomp
    if User.where(name: usuario, admin: true).exists? && contraseña == "locomotion"
      admin_menu
    else
      p "Acceso denegado"
    end
  end

  def admin_menu
    @view.admin_menu
    opcion = STDIN.gets.chomp
    case opcion
    when "1" then index_flight
    when "2" then index_booking
    when "3" then add_flight
    when "4" then p "Nos vemos :)"
    end
  end

  def reservaciones
    @view.res_menu
    opcion = STDIN.gets.chomp
    case opcion
    when "1" then p find_flight
    when "2" then p "Nos vemos :)"
    end
  end

  def find_flight
    @view.find_flight
    puts "From: "
    @from = STDIN.gets.chomp
    puts "To: "
    @to = STDIN.gets.chomp
    puts "Date: "
    @date = STDIN.gets.chomp
    puts "Passengers: "
    @passengers = STDIN.gets.chomp
    find_flight_deep(@from, @to, @date, @passengers)
  end

  def find_flight_deep(from, to, date, passengers)
    flight = Flight.all
    @view.find_flight_deep(flight, from, to, date, passengers)
    puts "Selecciona tu vuelo:"
    select = STDIN.gets.chomp
    book(select, passengers)
  end

  def book(fl_number, passengers)
    flight = Flight.find_by(id: fl_number)
    @view.book(flight)
    pass_left = passengers.to_i
    pass_count = 1
    while pass_left > 0 do
      puts "Datos de Persona #{pass_count}:"
      puts "Ingresa tu nombre :"
      name = STDIN.gets.chomp
      puts "email:"
      email = STDIN.gets.chomp
      new_user = User.create(name: name, email: email, admin: false)
      UserBooking.create(user_id: new_user["id"] , book_id: new_user["id"])
      UserFlight.create(user_id: new_user["id"], flight_id: flight["id"])

      pass_left -= 1
      pass_count += 1
    end

    puts "Realizar reservación: SI / NO"
    seleccion = STDIN.gets.chomp
    if seleccion.upcase == "SI"
      recibo(flight, passengers.to_i, "#{flight["cost"].to_i}")
    else
      p "Que mal :("
    end
  end

  def recibo(flight, pass, price)
    random = rand(1000..2000)
    new_book = Booking.create(num_booking: random, total: (pass*price.to_i), flight_id: flight["id"] )
    UserBooking.create(user_id: new_book["id"], book_id: new_book["id"])

    @view.recibo(random,pass, price)
  end

  def add_flight
    @view.add_flight
    puts "Número de vuelo nuevo:"
    num_flight = STDIN.gets.chomp
    puts "Fecha de vuelo nuevo:"
    date = STDIN.gets.chomp
    puts "Hora del vuelo nuevo:"
    depart = STDIN.gets.chomp
    puts "Ubicacion de vuelo nuevo:"
    from = STDIN.gets.chomp
    puts "Destino de vuelo nuevo:"
    to = STDIN.gets.chomp
    puts "Duración de vuelo nuevo:"
    duration = STDIN.gets.chomp
    puts "Costo de vuelo nuevo:"
    cost = STDIN.gets.chomp
    Flight.create(num_flight: num_flight, date: date, depart: depart, from: from, to: to, duration: duration, cost: cost, passengers: 0)
    puts "Vuelo añadido con éxito!"
  end

  def index_flight
    flight = Flight.all
    @view.index_flights(flight)   
  end

  def index_booking
    books = Booking.all
    @view.index_booking(books)
  end

  def index_user
    user = User.all
    @view.index_users(user)   
  end

  # def add
  #   Flight.create(flights: @args[1..-1].join(" "), : false)
  #   @view.create(@args[1..-1].join(" "))
  
  # end

end
