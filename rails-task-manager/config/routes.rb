Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # #get all the tasks
  # get "tasks", to: "tasks#index"

  # #get the form to create a new task
  # get "tasks/new", to: "tasks#new", as: :new_task
  # #post a new task
  # post "tasks", to: "tasks#create"

  # #get just one taks
  # get "tasks/:id", to: "tasks#show", as: :task

  # #get the form to edit an existing task
  # get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # #update an existing task
  # patch "tasks/:id", to: "tasks#update"

  # #delete an existing task
  # delete "tasks/:id", to: "tasks#destroy"


  resources :tasks

  patch "tasks/:id/done", to: "tasks#mark_as_done", as: :done_task

end
