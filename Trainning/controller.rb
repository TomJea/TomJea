require_relative'task'

class Controller
  require_relative'repository'

  def initialize(repository, view)
    @repository = repository
    @view = view
  end

  def display_all_tasks
    tasks = @repository.all
    view = @view.display_task(tasks)
  end

  def add_task()
    description = @view.ask_user_for_description
    task = Task.new(description)
    return @repository.add_task(task)
  end

  def mark_task_as_done()
    task_id = @view.ask_user_for_task_id
    task = @repository.find(task_id)
    task.mark_as_done
  end

  def destroy_task
    task_id = @view.ask_user_for_task_to_delete
    @repository.destroy_task(task_id)

  end
end
