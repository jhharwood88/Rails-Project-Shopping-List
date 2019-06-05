Rails.application.routes.draw do
  # resources :shoppinglists
  # resources :items
  # resources :users
  
  # devise_for :users, :paths => 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'
  # resource :user do
    # resources :itmes, only: [:index, :new, :create]
  # end
end
# 