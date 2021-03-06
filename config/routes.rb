Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  root   'users#new'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get     '/nicole1', to:  'static_pages#nicole1'
  post '/signup',  to: 'users#create'
  get   '/edit', to: 'users#edit'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
