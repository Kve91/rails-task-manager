Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources tasks only :[:index, :show]

  root "tasks#index"

  #read all
  get "tasks", to: "tasks#index"

  #read one task
  get "tasks/:id", to: "tasks#show"

  #create new

  get "tasks/new", to: "tasks#new"
  post "tasks/create", to: "tasks#create"

  #update
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"

  #delete task

  delete "tasks/:id", to: "tasks#destroy"
end
