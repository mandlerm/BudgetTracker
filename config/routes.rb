Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]

  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end
  get '/auth/google/callback' => 'devise/sessions#new'
  get '/auth/github/callback' => 'devise/sessions#new'
  root to: "static#home"


end
