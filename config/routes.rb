Rails.application.routes.draw do
  devise_for :clients
  root to: 'home#index'
  
  resources :clients, only: [:show]

  resources :boats
  resources :jobs
  
end
