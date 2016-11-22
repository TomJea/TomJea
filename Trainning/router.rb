class Router
  require_relative 'controller'
  def initialize(controller)
    @controller = controller
  end

  def start
    loop do
      print_menu
      action = gets.chomp.to_i
      case action
      when 1 then @controller.display_all_tasks
      when 2 then @controller.add_task
      when 3 then @controller.mark_task_as_done
      when 4 then @controller.destroy_task
      else puts "dummy"
      end
    end
  end

  private

  def print_menu
    puts "what next ?"
    puts "1. List tasks"
    puts "2. Add tasks"
    puts "3. Mark task as done"
    puts "4. Delete task"
  end
end
