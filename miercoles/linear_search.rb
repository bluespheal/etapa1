def linear_search (number, array)
  i = 0
  result = nil
  while i < array.length
    result = i if array[i] == number      
    i += 1
  end
  p result
end

def global_linear_search (letter, array)
  i = 0
  result = []
  while i < array.length
    result << i if array[i] == letter      
    i += 1
  end
  result
end

random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
linear_search(20, random_numbers)
# => 3
linear_search(29, random_numbers)
# => nil

arr = "entretenerse".split('')

p global_linear_search("e", arr)
# => [0, 4, 6, 8, 11]