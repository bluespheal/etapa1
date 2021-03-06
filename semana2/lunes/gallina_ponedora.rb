class LayingHen
  attr_reader :age

  def initialize
    @eggs = 0
    @age = 0
  end

  # Ages the hen one month, and lays 4 eggs if the hen is older than 3 months
  def age!
    @age += 1
    if @age >= 3
      @eggs += 4
    end
  end

  # Returns +true+ if the hen has laid any eggs, +false+ otherwise
  def any_eggs?
    if @eggs > 0 then true else false end
  end

  # Returns an Egg if there are any
  # Raises a NoEggsError otherwise
  def pick_an_egg!
    raise NoEggsError, "The hen has not layed any eggs" unless self.any_eggs?

    # egg-picking logic goes here
    if any_eggs?   
      @eggs -= 1
      egg = Egg.new(@hatched_hours) 
    end
  end

  # Returns +true+ if the hen can't lay eggs anymore because of its age, +false+ otherwise.
  # The max age for a hen to lay eggs is 10 
  def old?
    if @age > 10 then true else false end
  end

  def increase_hatched_hour(hours)
    @hatched_hours = hours
  end
end

class Egg
  attr_reader :hours
  # Initializes a new Egg with hatched hours +hatched_hours+
  def initialize(hours)
    @hours = hours
  end

  # Return +true+ if hatched hours is greater than 3, +false+ otherwise
  def rotten?
    if @hours > 3 then true else false end
  end
end


hen = LayingHen.new
basket = []
rotten_eggs = 0

hen.age! until hen.any_eggs?

puts "Hen is #{hen.age} months old, its starting to lay eggs."
puts ""

until hen.old?

  # The time we take to pick up the eggs
  hours = rand(5)
  hen.increase_hatched_hour(hours)

  while hen.any_eggs?
    egg = hen.pick_an_egg!

    if egg.rotten?
      rotten_eggs += 1
    else
      basket << egg
    end
  end

  puts "Month #{hen.age} Report"
  puts "We took #{hours} hour(s) to pick the eggs"
  puts "Eggs in the basket: #{basket.size}"
  puts "Rotten eggs: #{rotten_eggs}"
  puts ""

  # Age the hen another month
  hen.age!
end

puts "The hen is old, she can't lay more eggs!"
puts "The hen laid #{basket.size + rotten_eggs} eggs"
if rotten_eggs == 0
  puts "CONGRATULATIONS NO ROTTEN EGGS"
else
  puts "We picked #{rotten_eggs} eggs too late, so they became rotten"
end