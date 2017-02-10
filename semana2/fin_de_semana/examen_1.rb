#Clase CreditCard
class CreditCard
  attr_reader :name, :number, :expiration, :cvc
  attr_accessor :status

  def initialize(name, number, expiration, cvc, status)
    @name = name
    @number = number
    @expiration = expiration
    @cvc = cvc
    @status = status
  end

end

#Cinco instancias de CreditCard
card_one = CreditCard.new("Juan", "1234123123", "17/09", "123", "[234, 567, 456, 567, 344]")
card_two = CreditCard.new("Eva", "5678567567", "01/03", "456", "[234, 345, 456, 567, 344]")
card_three = CreditCard.new("Kevin", "9012901901", "01/07", "789", "[234, 345, 456, 567, 344]")
card_four = CreditCard.new("Victor", "6123987281", "13/10", "010", "[567, 345, 456, 567, 344]")
card_five = CreditCard.new("Paty", "7198237497", "21/06", "713", "[567, 345, 456, 567, 344]")
#Array con cinco objetos de tarjetas de crédito

cards = [card_one, card_two, card_three, card_four, card_five]

#tests 

cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

def mostrar_datos(arr)
  header = ["name", "number", "expiration", "cvc", "status"]
  puts header_s = "|#{header[0].center(10)}|#{header[1].center(15)}|#{header[2].center(10)}|#{header[3].center(5)}|#{header[4].center(30)}|"
  print "-"*header_s.length + "\n"
  arr.each{|x|
    puts "|#{x.name.center(10)}|#{x.number.center(15)}|#{x.expiration.center(10)}|#{x.cvc.center(5)}|#{x.status.center(30)}|"
  }
end

mostrar_datos(cards)
