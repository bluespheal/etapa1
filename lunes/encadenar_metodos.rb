# TODO: Refactoriza buscando elegancia 
def shout_backwards(string) string.upcase.reverse + "!!!" end

# AYUDAME: Refactoriza buscando elegancia 
def squared_primes(array)
  array.find_prime.map_prime
end

public

def find_prime
  find_all{|x| (2..x-1).select_prime?(x).count_prime? }
end

def select_prime?(x)
  select{|i| x % i == 0 }
end

def count_prime?
  count == 0
end

def map_prime
  map{|p| p*p}
end
# Driver code... no edites este texto. En la consola esto deberá imprimir puros trues
puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]
