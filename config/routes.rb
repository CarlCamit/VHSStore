Rails.application.routes.draw do
  resources :videos
  devise_for :users
  resources :rentals, only: [:index, :show, :new, :create]
  root 'home#index'
end
