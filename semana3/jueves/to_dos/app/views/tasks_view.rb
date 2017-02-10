class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario

	def index(tasks)
    new_array = []
    tasks.each do |x|
      new_array << x["tasks"]
    end
    max_length = new_array.max_by { |x| x.length }.length
    puts "\e[#{7}m#{"#\t task#{"".ljust(max_length)}\tcompleted"}\e[0m "
    counter = 1
    tasks.each do |task|
      completed = ""
      digit = task["id"].to_s.length
      space = ""
      space = " " if digit < 2  
      task["completed"] == true ? completed = "[\u2713]" : completed = "[ ]"
      if counter.even?
        puts "\e[#{47}m#{"#{task["id"]}#{space}\t #{task["tasks"].ljust(max_length)} \t#{completed}      "}\e[0m"
      else
        puts "#{task["id"]}#{space}\t #{task["tasks"].ljust(max_length)} \t#{completed}"
      end
      counter += 1
    end
	end

  def create(task)
    puts "Has añadido la tarea \"#{task}\" a tu lista."
  end

  def delete(task)
    puts "Has eliminado la tarea \"#{task}\" de tu lista."
  end

  def update(task)
    puts "Has marcado como completa la tarea \"#{task}\" de tu lista."
  end

	def error
	end
end
