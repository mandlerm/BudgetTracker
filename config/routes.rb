Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]

  devise_scope :user do
    root to: "devise/sessions#new"
  end


end
