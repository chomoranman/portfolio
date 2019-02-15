Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root to: 'top#index'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index,:create,:edit,:update,:destroy]
end
