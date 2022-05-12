Rails.application.routes.draw do
  resources :posts
  #resources :posts, only: [:new, :create, :index]
  devise_for :users
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
