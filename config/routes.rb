Rails.application.routes.draw do

  root 'sessions#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'

end
