Rails.application.routes.draw do
  resources :articles
  resources :users, except: [:new]
  resources :sessions
  resources :pages
  
  root 'pages#home'
  get 'about', to:'pages#about'

  get 'signup', to: 'users#new'
  

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  

  get 'pages/ajax_demo', to:'pages#ajax_demo'
  post 'pages/ajax_demo', to:'pages#ajax_demo'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
