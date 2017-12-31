Rails.application.routes.draw do
  devise_for :users,  :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users, only: [:show]
  resources :transaction, only: [:new, :create, :edit, :update, :delete]
  resources :income, only: [:new, :create, :edit, :update, :delete]
  resources :outgo, only: [:new, :create, :edit, :update, :delete]
  resources :income_source, only: [:new, :create, :delete]
  resources :subcategory, only: [:new, :create, :delete]
  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end
  # get '/auth/google/callback' => 'devise/sessions#new'
  # get '/auth/github/callback' => 'devise/sessions#new'
  root to: "static#home"


end
