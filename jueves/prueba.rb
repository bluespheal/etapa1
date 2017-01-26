def hola
  array = ["hola", "hoxxxhola"]
  letter = 0
  position = 0
  hola = true
  while letter < array[1].length
    if array[0][position] == array[1][letter]  
      while hola == true
        if array[0][position + 1] == array[1][letter+1]
          p position += 1
          p letter += 1
          p array[0][position]
        else
          p position += 1
          p "falso"
          hola = false
        end
      end

      letter += 1
    # else
    #   letter += 1
    end
    letter += 1
  end
end

#if array[0][0 + 1] == array[1][letter+1] 
      #   p "si"
      #   if array[0][1 + 1] == array[1][5+1] 
      #     p "van bien"
      #   end
      #end

p hola