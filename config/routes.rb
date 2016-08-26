Rails.application.routes.draw do
  get 'teams/new'

  resources :profiles
  resources :teams

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
