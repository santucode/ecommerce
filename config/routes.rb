Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "home/index" => "home#index"
  root "home#index"

  resources :categories
  resources :products
end
