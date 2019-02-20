Rails.application.routes.draw do
  get 'equipos/index'
  get 'equipos/new'
  get 'equipos/create'
  get 'equipos/show'
  get 'equipos/edit'
  get 'equipos/update'
  get 'equipos/destroy'
  root 'main#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :index]
  resources :equipos

  get 'main/index'

end
