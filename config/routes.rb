Rails.application.routes.draw do
  get    'sessions/new'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root :to => "users#new"

  resources :account_movements
  resources :accounts
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
