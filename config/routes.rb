Rails.application.routes.draw do
  root to: "cafe#index"
  get "/order", to: "orders#index", as: "order_items"
  get "/order/new", to: "order_items#new", as: "new_order_item"
  post "/order", to: "order_items#create"
end