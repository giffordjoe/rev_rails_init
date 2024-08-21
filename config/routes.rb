Rails.application.routes.draw do
  resources :gifts
  resources :friends
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "friends#index"
end

