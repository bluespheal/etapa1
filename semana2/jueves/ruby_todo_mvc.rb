require 'csv'

class ListParser
  def self.list_view
    CSV.foreach("list.csv").with_index(1) do |row, ln|
      puts ln.to_s + ". " + row.join
    end
  end
end

class ListIndex
  def self.show_list
    if ARGV[0] == "index"
      ListParser.list_view
    end
  end
end

class ListAdder
  def self.add_item
    if ARGV[0] == "add"
      string = ARGV[1..-1].map { |x| " #{x}" + " " }.unshift("[ ]")
      CSV.open("list.csv", "ab") do |csv|
        csv << string
      end
      p "Agregaste la tarea '#{string.join[4..-1]}' a tu lista."
    end
  end
end

class ListDeleter 
  def self.delete_item
    if ARGV[0] == "delete"
      array = CSV.read("list.csv")
      array.each_with_index do |x, i|
        if ARGV[1].to_i - 1 == i
          @string = x
          array.delete(x)
        end
      end
      CSV.open("list.csv", 'wb') do |csv|
        array.map do |i|
          csv << i
        end
      end 
      p "Borraste la tarea '#{@string.join[4..-1]}' de tu lista."
      ListParser.list_view
    end
  end
end

class ListCompleter 
  def self.complete_item
    if ARGV[0] == "complete"
      array = CSV.read("list.csv")
      array.each_with_index do |x, i|
        if ARGV[1].to_i - 1 == i
          @string = x
          x[0].gsub!(" ", "X")
          x[0][1]
        end
      end
      CSV.open("list.csv", 'wb') do |csv|
        array.map do |i|
          csv << i
        end
      end 
      p "Completaste la tarea '#{@string.join[4..-1]}'!"
      ListParser.list_view
    end
  end
end

class List
  ListIndex.show_list
  ListAdder.add_item
  ListDeleter.delete_item
  ListCompleter.complete_item
end

list = List.new
list


