Rails.application.routes.draw do
  get 'reactions/create'
  get '/', to: 'posts#show', as: 'posts/show'
  get 'new', to: 'posts#new', as: 'posts/new'
  post 'posts/create'
  get 'signup', to: 'users#new', as: 'users/new'
  post 'users/create'
  get 'posts/index'
  get 'login', to: 'sessions#new', as: 'sessions/new'
  get 'logout', to: 'sessions#destroy', as: 'sessions/destroy'
  post 'sessions/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
