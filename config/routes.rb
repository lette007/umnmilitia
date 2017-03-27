Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  root   'users#new'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/nicole1', to: 'static_pages#nicole1'
  get    '/nicole2', to: 'static_pages#nicole2'
  get    '/nicole3', to: 'static_pages#nicole3'
  get    '/nicole4', to: 'static_pages#nicole4'
  get    '/nicole5', to: 'static_pages#nicole5'
  get    '/nicole6', to: 'static_pages#nicole6'
   get    '/nicole7', to: 'static_pages#nicole7'
  get    '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get   '/edit', to: 'users#edit'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
