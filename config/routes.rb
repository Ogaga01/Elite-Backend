Rails.application.routes.draw do
  resources :car_reservations
  resources :airplane_reservations
  resources :cars
  resources :airplanes
  devise_for :users,controllers: { tokens: 'users/api/v1/tokens' }
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
