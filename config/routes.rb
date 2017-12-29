Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users, only: [:show]

  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end

  root to: "static#home"


end
