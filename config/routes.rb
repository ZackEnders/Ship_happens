Rails.application.routes.draw do
  devise_for :clients
  root to: 'home#index'
  
  resources :clients, only: [:show, :update]

  resources :boats
  resources :jobs
  
end
