Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'users#index'

  resources :users, only: [:create, :show, :edit, :update, :destroy]

  resources :sessions, only: [:new, :create, :destroy]

  resources :questions, except: [:show, :new, :index]

  get 'sign_up', to: 'users#new'
  get 'log_out', to: 'sessions#destroy'
  get 'log_in', to: 'sessions#new'
  delete 'delete', to: 'users#destroy'
end
