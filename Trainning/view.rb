class View
  def display_task(tasks)
    puts "------------------------------------"
    tasks.each_with_index do |task, index|
      status = task.done ? "[X]" : "[ ]"
      puts "#{index + 1}. #{status} #{task.description}"
    end
    puts "------------------------------------"
  end

  def ask_user_for_description
    puts "what do you want to do ?"
    printf ">"
    return gets.chomp
  end

  def ask_user_for_task_id
    puts "which task do you want to mark_as_done?"
    printf ">"
    gets.chomp.to_i - 1
  end

  def ask_user_for_task_to_delete
    puts "which task do you want to delete?"
    printf ">"
    gets.chomp.to_i - 1
  end
end
