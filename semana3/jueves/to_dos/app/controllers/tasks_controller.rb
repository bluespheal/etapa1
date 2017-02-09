class TasksController
  def initialize(args)
    @view = TasksView.new
    @args = args
    send(args[0])
  end

  def index
    tasks = Task.all
    @view.index(tasks)
  end

  def add
    Task.create(tasks: @args[1..-1].join(" "), completed: false)
    @view.create(@args[1..-1].join(" "))
  end

  def delete
    tasks = Task.find_by(id: @args[1]).destroy
    @view.delete(tasks.tasks)
  end

  def complete
    name = Task.find_by(id: @args[1])
    Task.find_by(id: @args[1]).update(completed: true)
    @view.update(name.tasks)
  end
end
