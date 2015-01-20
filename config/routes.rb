Rails.application.routes.draw do
  get 'access/index'

  get 'access/login'

  get 'index/login'

  root to: 'visitors#index'
  # get '/users/index',  to: 'users#index' 
  # get '/users/show/*id', to: 'users#show'
  resources :users
  
  
end
