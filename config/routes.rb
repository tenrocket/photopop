Rails.application.routes.draw do
  # get "login" => "sessions#new"
  # get "logout" => "sessions#destroy"

  # get "/auth/facebook/callback" => "auth#callback"

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :photos, only: [:index]
  resources :locations

  root 'home#index'

  get "/auth/facebook/callback" => "sessions#create"
  get "signout" => "sessions#destroy"

end