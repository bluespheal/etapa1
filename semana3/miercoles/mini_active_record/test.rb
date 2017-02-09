require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

chef = Chef.create(first_name: "Eduardo", last_name: "Fernández", email:"eduardo@gmail.com", phone:"930-028-2908 x7555", birthday:Time.now)
chefsito = Chef.new(first_name: "Remi", last_name: "Rata", email:"remi@gmail.com", phone:"090-328-2328 x2345", birthday:Time.now)


chef = Chef.find(21)

Chef.all 
Chef.where("first_name = 'Eduardo'")

assert chef[:first_name] = 'Eduardo'
assert chef[:first_name] == 'Eduardo'
assert chef[:last_name] == 'Fernández'

assert chef[:first_name] = 'Eduardoloco'
assert chef[:first_name] == 'Eduardoloco'

p chefsito.new_record?

chefsito.save

p chefsito.new_record?

quesadillas = Meal.create(name:"Quesadillas", chef_id:"21", created_at:Time.now, updated_at:Time.now)
empanadas = Meal.new(name:"Empanadas", chef_id:"21", created_at:Time.now, updated_at:Time.now)

quesadillas = Meal.find(91)

Meal.all 
Meal.where("name = 'Quesadillas'")

assert quesadillas[:name] = 'Quesadillas'
assert quesadillas[:name] == 'Quesadillas'

assert quesadillas[:name] = 'Khezadeeyass'
assert quesadillas[:name] == 'Khezadeeyass'

p empanadas.new_record?

empanadas.save

p empanadas.new_record?

puts "finished"
