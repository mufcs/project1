Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]

  resources :clubs
# This is not a CRUD
  get '/login' => 'session#new'        # login form
  post '/login' => 'session#create'    # process the login
  delete '/login' => 'session#destroy' # log out
end
