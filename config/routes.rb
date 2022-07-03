Rails.application.routes.draw do
  get 'labs', to: 'labs#index'
  get 'labs/:id', to: 'labs#show'
  post 'labs', to: 'labs#create'
  patch 'labs/:id', to: 'labs#update'
  delete 'labs/:id', to: 'labs#destroy'
  # here is routes for user
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'
  post 'users', to: 'users#create'
  patch 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
