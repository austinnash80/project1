Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :only => [:new, :create]
  resources :cities
  resources :activities

  get '/login' => 'session#new'        # Signin
  post '/login' => 'session#create'    # Signin
  delete '/login' => 'session#destroy' # Signout
  post '/cities/:id' => 'cities#update'
  post '/activities/:id' => 'activities#update'
  post '/activities/:id' => 'activities#show'
  delete '/activities/:id' => 'activities#destroy'

end
