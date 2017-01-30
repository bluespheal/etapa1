require 'benchmark'

def fibonacci_iterative(natural)
  number_1 = 0
  number_2 = 1
  result = 0
  (1..natural).map {|n| 
      result = number_1 + number_2
      number_2 = number_1
      number_1 = result
    }
  result
end

def fibonacci_recursive(n)
  
  case n
  when 0
    0
  when 1
    1
  else
    # uno = fibonacci_recursive(n - 2)
    fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
    # uno * 2 + 1
  end
end


puts Benchmark.measure {
  1000.times{fibonacci_iterative(0) == 0}
  1000.times{fibonacci_iterative(1) == 1}
  1000.times{fibonacci_iterative(2) == 1}
  1000.times{fibonacci_iterative(3) == 2}
  1000.times{fibonacci_iterative(4) == 3}
  1000.times{fibonacci_iterative(8) }
}

puts Benchmark.measure {
  1.times{p fibonacci_recursive(0) == 0}
  1.times{p fibonacci_recursive(1) == 1}
  1.times{p fibonacci_recursive(2) == 1}
  1.times{p fibonacci_recursive(3) == 2}
  1.times{p fibonacci_recursive(4) == 3}
  1.times{p fibonacci_recursive(8) }
}

#puts Benchmark.measure { "a"*1_000_000 }

# p fibonacci_iterative(0) == 0
# p fibonacci_iterative(1) == 1
# p fibonacci_iterative(2) == 1
# p fibonacci_iterative(3) == 2
# p fibonacci_iterative(4) == 3
# p fibonacci_iterative(5) == 5

# p fibonacci_recursive(0) == 0
# p fibonacci_recursive(1) == 1
# p fibonacci_recursive(2) == 1
# p fibonacci_recursive(3) == 2
# p fibonacci_recursive(4) == 3
# p fibonacci_recursive(5) == 5