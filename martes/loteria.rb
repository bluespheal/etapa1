def shuffle(array)
  i = array.length
  loop {
    random = rand(0..i)
    if random != i
      array << array.slice!(random)
      i -= 1
    end
  break if i <= 0}
  array
end

# Driver code:
array = (1..15).to_a

p shuffle(array) == shuffle(array)
p shuffle(array)


# # Esto no deberá arrojar una excepción
# 10.times do |variable|
#     raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
# end
# p true