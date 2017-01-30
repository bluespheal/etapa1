def finder
  array= ["hola", "xxxholaxxxholxxxhxalohhohh"]
  horizontal(array)
  horizontal_rev(array)
end

def horizontal(array)
  let = 0
  base = 0
  while let < array[1].length
    if array[0][base] == array[1][let]
      p let , array[1][let]
      let += 1 
      base += 1
    else
      let += 1
    end
  end
end

def horizontal_rev(array)
  let = array[1].length
  base = 0
  while let > 0
    if array[0][base] == array[1][let]
      p let , array[1][let]
      let -= 1 
      base += 1
    else
      let -= 1
    end
  end
end


finder





# def hola
#   array = ["hola", "hoxxxxxxholaxxxxxxxholaxxxx"]
#   letter = 0
#   while letter < array[1].length
#     position = 0
#     if array[0][position] == array[1][letter]
#       while position < array[0].length
#         if array[0][position] == array[1][letter+1]
#           p array[0][position]
#           p letter += 1 
#           #position += 1

#         else
#           position += 1
#         end
#       end

#       letter += 1
#     # else
#     #   letter += 1
#     end
#     letter += 1
#   end
# end

# #if array[0][0 + 1] == array[1][letter+1] 
#       #   p "si"
#       #   if array[0][1 + 1] == array[1][5+1] 
#       #     p "van bien"
#       #   end
#       #end

# p hola