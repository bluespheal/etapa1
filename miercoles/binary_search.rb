def binary_search(num, array)
  index = 0
  sorted = array.sort
  first_half = sorted.each_slice( (array.length / 2.0).round).to_a[0]
  second_half = sorted.each_slice( (array.length / 2.0).round).to_a[1]
  half = (sorted.length / 2)
  
  if num == sorted[half] 
    half
  elsif num < sorted[half] 
    binary_search(num, first_half)
  else
    binary_search(num, second_half)
  end  

  # array.index(num)
  # new_array = array
  # loop_break = false
  # p array[(array.length / 2.0).floor]
  # while loop_break == false 
  #   p (array.length / 2.0).floor
  #   if num == new_array[(array.length / 2.0).floor]
  #     loop_break = true
  #     return (array.length / 2.0).floor
  #   elsif num < array[(array.length / 2.0).floor]
  #     p new_array = array[0..(array.length / 2 - 1).round]
  #   elsif num > array[(array.length / 2.0).floor]
  #     p new_array = array[(array.length / 2).round..-1]
  #   end
  # end
end

# p binary_search(1, [1])# == 0
#p binary_search(4, [1,2,3]) == nil
p binary_search(13, [2,4,5,9,11, 13,23])# == 2
# p binary_search(6, [1,2,3,4,5,6,7,8,9])# == 5
# p binary_search(2, [1,2,3,5,6,7,8,9,10,11])# == 1
# p binary_search(5, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])# == 4
# p binary_search(5, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])# == 4
