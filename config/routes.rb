Rails.application.routes.draw do
  get 'users/new'
  post 'users/create'
  post 'projects/create'
  resources :projects, only: [:edit, :update]
  get 'projects/index'
  get 'hello/index'
  get 'projects/new'
  get 'projects/cheer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
