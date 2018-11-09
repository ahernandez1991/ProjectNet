Rails.application.routes.draw do
  root 'main#index'

  get 'login', to: 'sessions#new'
  get '/projects/:id/edit', to: 'projects#edit'
  post 'login', to: 'sessions#create'
  patch '/projects/:id', to: 'projects#update'

  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :index]
  resources :projects

  get 'main/index'

end
