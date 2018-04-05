Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :only => [:new, :create]
  resources :cities
  resources :activities

  get '/login' => 'session#new'        # Sign in form
  post '/login' => 'session#create'    # Sign in action
  delete '/login' => 'session#destroy' # Sign out
  post '/cities/:id' => 'cities#update'
  post '/activities/:id' => 'activities#update'
  post '/activities/:id' => 'activities#show'
  delete '/activities/:id' => 'activities#destroy'
  # get '/cities/new' => 'cities#new'
  # get '/cities/:id' => 'cities#show', :as => 'city'
  # post '/cities' => 'cities#create'
end
