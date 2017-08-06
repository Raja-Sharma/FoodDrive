Rails.application.routes.draw do
  resources :users, only: [:show, :new, :create]
  resources :foods

  root to: 'foods#index'

end
