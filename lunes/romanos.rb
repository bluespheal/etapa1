def to_roman(num)
  result = ""
  conversion = { "M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, "C" => 100, "L" => 50, "XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" => 4, "I" => 1 }

  while num >= 1
    conversion.each do |x, y|
      if num >= y
        result += x
        num -= y
      end 
    end
  end
  # while num >= 1
  #   case 
  #   when num >= 1000
  #     num -= 1000
  #     result += "M"
  #   when num >= 900
  #     num -= 900
  #     result += "CM"
  #   when num >= 500
  #     num -= 500
  #     result += "D"
  #   when num >= 400
  #     num -= 400
  #     result += "CD"
  #   when num >= 100
  #     num -= 100
  #     result += "C"
  #   when num >= 50
  #     num -= 50
  #     result += "L"
  #   when num >= 40
  #     num -= 40
  #     result += "XL"
  #   when num >= 10
  #     num -= 10
  #     result += "X"
  #   when num >= 9
  #     num -= 9
  #     result += "IX"
  #   when num >= 5
  #     num -= 5
  #     result += "V"
  #   when num >= 4
  #     num -= 4
  #     result += "IV"
  #   when num >= 1
  #     num -= 1
  #     result += "I"
  #   end
  # end
  result
end

# p to_roman(1549)
a = to_roman(1) == "I"
b = to_roman(3) == "III"  
c = to_roman(4) == "IV"
d = to_roman(9) == "IX"
e = to_roman(13) == "XIII"
f = to_roman(14) == "XIV"
g = to_roman(944) == "CMXLIV"
h = to_roman(1453) == "MCDLIII"
i = to_roman(1646) == "MDCXLVI"

puts "|valid |input | expected | actual"
puts "|------|------|----------|-------"
puts "| #{a} |1     | I        | #{to_roman(1)}"
puts "| #{b} |3     | III      | #{to_roman(3)}"
puts "| #{c} |4     | IV       | #{to_roman(4)}"
puts "| #{d} |9     | IX       | #{to_roman(9)}"
puts "| #{e} |13    | XIII     | #{to_roman(13)}"
puts "| #{f} |14    | XIV      | #{to_roman(14)}"
puts "| #{g} |944   | CMXLIV   | #{to_roman(944)}"
puts "| #{h} |1453  | MCDLIII  | #{to_roman(1453)}"
puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}" 