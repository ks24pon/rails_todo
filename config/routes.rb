Rails.application.routes.draw do
  get "/tasks" => "tasks#index"
  get "/tasks/new" => "tasks#new"
  post "/tasks/create" => "tasks#create"
  get "/tasks/:id/edit" => "tasks#edit", as: 'tasks_edit_path'
  put "/tasks/:id" => "tasks#update", as: 'tasks_update_path'
end
