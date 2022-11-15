Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new", as: "new"
  get "tasks/:id/edit", to: "tasks#edit", as: "edit"
  get "tasks/:id/delete", to: "tasks#destroy", as: "delete"
  patch "tasks/:id", to: "tasks#update"
  get "tasks/:id", to: "tasks#show", as: "task"
  post "tasks", to: "tasks#create"
end
