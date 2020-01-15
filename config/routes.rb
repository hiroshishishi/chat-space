Rails.application.routes.draw do
  devise_for :users
  root 'messages#index'
  resources :messages, only: [:index]
  resources :users, only: [:index, :edit, :update, ]
  resources :groups, only: [:index, :new, :create, :edit, :update]
end
