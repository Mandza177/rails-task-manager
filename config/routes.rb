Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # # CREATE
  get "task/new", to: "tasks#new", as: "new_task" # page form
  post "tasks", to: "tasks#create" # url receive data from form

  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  delete 'tasks/:id', to: 'tasks#destroy'

  patch 'tasks/:id', to: 'tasks#update'

end
