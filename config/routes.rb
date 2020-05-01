Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'users#index'

  resources :users

  resource :session, only: [:new, :create, :destroy]

  resources :questions, except: [:show, :new, :index]

  get 'log_out' => 'sessions#destroy'

end
