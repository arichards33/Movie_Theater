Rails.application.routes.draw do

  root 'movies#index'

  get "/purchases/:id/:start_time" => 'purchases#index'
  get "/movies/:id/:start_time" => 'movies#show'
  post "/purchases" => 'purchases#create'
  resources :movies
  resources :purchases


end
