Rails.application.routes.draw do
  devise_for :clients
  root to: 'home#index'

  resources :boats
  resources :jobs
  
end
