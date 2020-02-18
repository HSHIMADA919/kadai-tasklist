Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'users/index'
  get 'users/show'
  get 'users/new'
  
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :new, :create]
  
  resources :tasks
end
