Rails.application.routes.draw do
  root "main#home"
  devise_for :users
  resources :users
  resources :routes
  resources :images
  resources :devices
  resources :green_houses
  resources :agricultural_companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
   