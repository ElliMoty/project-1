Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]
  resources :products
  resources :orders
  resources :search, only: [:index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/flopa' => 'pages#flopa'
  
  post '/products/:id/add_to_cart', to: 'orders#add_to_cart', as: 'add_to_cart'
    
  get '/orders/:id/confirmation', to: 'orders#confirmation', as: 'confirmation'

  delete '/orders/:order_id/:product_index', to: 'orders#delete_product', as: 'delete_order_product'

end
