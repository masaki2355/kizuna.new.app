Rails.application.routes.draw do
  
  root to: 'entrances#index'
  resources :entrances
  resources :tweets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
