Rails.application.routes.draw do
  root 'home#index'
  get 'home/prices'

  resources :todos, only: [:index, :show, :create, :update, :destroy]
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
