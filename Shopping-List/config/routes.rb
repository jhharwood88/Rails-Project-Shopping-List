Rails.application.routes.draw do

  devise_for :users, :controllers => {registrations: 'registrations' }

  resources :items, only: [:index, :new, :create, :edit]
 
  root to: 'application#welcome'
  resource :user do
    resources :shopping_lists, only: [:index, :new, :create]
  end
end
