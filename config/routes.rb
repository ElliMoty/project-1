Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]
  resources :products
  resources :orders


  post '/products/addToCart' => 'products#addToCart'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/confirmation' => 'orders#show'

  get 'carts/show'

end
