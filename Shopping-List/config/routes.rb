Rails.application.routes.draw do

  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'omniauth_callbacks' }

  resources :items
 
  root to: 'application#welcome'
  resource :user do
    resources :lists, only: [:index, :show, :new, :create]
  end
end
