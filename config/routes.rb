Rails.application.routes.draw do
  root to: 'visitors#index'
  # get '/users/index',  to: 'users#index' 
  # get '/users/show/*id', to: 'users#show'
  resources :users
  
  
end
