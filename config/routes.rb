Rails.application.routes.draw do
  root to: "cafe#index"
  get "/order", to: "orders#index", as: "order_items"
  get "/order/new", to: "order_items#new", as: "new_order_item"
  post "/order", to: "order_items#create"
  # get "/order_items/:id/edit", to: "order_items#edit", as: "edit_order_item"
  # put "/order_items/:id", to: "order_items#update"
  # patch "/order_items/:id", to: "order_items#update", as: "edit_order_item"
  resources :order_items, only: %i[edit update destroy]
end