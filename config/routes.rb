Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create]

  resources :clubs, :only => [:home, :create]

  get '/clubs/home' => 'clubs#home'

  get '/clubs/new' => 'clubs#new'
  post '/clubs/new' => 'clubs#new'
end
