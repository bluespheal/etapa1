require 'faker'
require 'csv'

class Person
  attr_reader :first_name, :last_name, :email, :phone, :created_at
  def initialize(num_people)
    @array = []
    num_people.times{ @array << Faker::Name.first_name }
    @array

  end

  def people
    @array
  end
  
end

class PersonWriter
  def initialize(file, array)
    @file = file
    p @array = array
  end

  def create_csv
    CSV.open("people.csv", "wb") do |csv|
      @array.map do |i|
        csv << [i]
      end
    end    
  end
end

class PersonParser
  def initialize(csv_file)
    @csv_file = csv_file
  end
  
  def people
    the_array = []
    CSV.foreach(@csv_file) do |row|
      the_array << Person.new(1).people
    end
    puts the_array[0..9]
  end
  
end

# people = Person.new(20)
people = Person.new(20).people
person_writer = PersonWriter.new("people.csv", people)
person_writer.create_csv

parser = PersonParser.new("people.csv")
people = parser.people

