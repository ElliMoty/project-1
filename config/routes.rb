Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]
  resources :products

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/confirmation' => 'products#confirmation'

end
