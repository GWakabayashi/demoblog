Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  devise_for :users

  get 'home/about'
  

  # Defines the root path route ("/")
  root "home#index"
end
