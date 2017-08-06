Rails.application.routes.draw do
  resources :users, only: [:show, :new, :create]
  resources :foods

  get 'login', to: 'sessions#new'
  post 'sessions', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  root to: 'foods#index'

end
