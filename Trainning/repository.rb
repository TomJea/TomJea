class Repository
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def destroy_task(id)
    @tasks.delete_at(id)
  end

  def all
    return @tasks
  end

  def find (index)
    return @tasks[index]
  end
end
