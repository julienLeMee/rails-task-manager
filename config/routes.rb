Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # Defines the root path route ("/")
  # root "articles#index"
  get '/tasks', to: 'tasks#index'
  get '/tasks/new', to: 'tasks#new',  as: :new_task
  get '/tasks/:id', to: 'tasks#show', as: :task
  post '/tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'

  get 'tasks/:id/mark_as_done', to: 'tasks#mark_as_done', as: :mark_as_done

  # resources :tasks
end
