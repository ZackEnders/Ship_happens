Rails.application.routes.draw do
  devise_for :clients
  root to: 'home#index'
  get '/dashboard', to: 'home#show'

  resources :boats
  resources :jobs
  
end
