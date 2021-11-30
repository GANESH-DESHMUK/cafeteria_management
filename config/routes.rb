Rails.application.routes.draw do
  get "/" => "home#index"
  resources :menus
  resources :users
  resources :menu_items
  resources :order_items
  resources :users
  resources :categories
  resources :reports
  resources :orders
  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session

  get "/menus/changemenu" => "menus#changeMenu", as: :change_menus
  put "/menus/:id/updateMenuName" => "menus#updateMenuName"
  put "menu_items/:id/updateMenuItem" => "menu_items#updateMenuItem"

  post "/users/:id/removeAsClerk" => "users#removeAsClerk"
  post "/users/:id/makeAsClerk" => "users#makeAsClerk"

  get "/reports/:id" => "reports#invoice", as: :invoice

  post "/orderdeliver/:id" => "orders#deliverOrder"
  post "/orders/confirm" => "orders#confirm"
  get "/orders/cart" => "orders#cart", as: :carts

  put "/order_items/:id/decrement" => "order_items#decrement"
  put "/order_items/:id/decrementInCart" => "order_items#decrementInCart"

  post "/order_items/:id/addToCart" => "order_items#addToCart"

  put "/order_items/:id/increment" => "order_items#increment"
  put "/order_items/:id/incrementInCart" => "order_items#incrementInCart"

end
