Rails.application.routes.draw do
  post 'projects/create'
  resources :projects, only: [:edit, :update]
  get 'projects/index'
  get 'hello/index'
  get 'projects/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
