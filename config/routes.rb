Rails.application.routes.draw do
  get 'reactions/create'
  get 'posts/show'
  get 'posts/new'
  post 'posts/create'
  get 'posts/show/:id' => 'posts#show'
  get 'users/new'
  post 'users/create'
  post 'projects/create'
  resources :projects, only: [:edit, :update]
  get 'projects/index'
  get 'posts/index'
  get 'hello/index'
  get 'projects/new'
  
  get 'projects/cheer'
  get 'projects/detail'
  get 'sessions/new'
  get 'sessions/destroy'
  post 'sessions/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
