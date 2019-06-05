Rails.application.routes.draw do

  devise_for :users, :paths => 'users'
 
  root to: 'application#welcome'
  resource :user do
    resources :itmes, only: [:index, :new, :create]
  end
end
