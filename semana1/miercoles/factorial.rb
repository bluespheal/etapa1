def factorial_iterative(num)
  total = 1
  (1..num).map {|n| n != 0 ? total = total*n : total}
  total
end

def factorial_recursive(num)
  num == 0 ? 1 : num * factorial_recursive(num-1)
end
# Pruebas

p factorial_iterative(5) == 120
p factorial_iterative(4) == 24
p factorial_iterative(0) == 1
p factorial_iterative(1) == 1
p factorial_iterative(6) == 720

p factorial_recursive(5) == 120
p factorial_recursive(8) == 40320