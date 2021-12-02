Rails.application.routes.draw do
  get 'hello_world/index'
  resources :tests
  resources :widgets
  resources :posts

  get "/consoles", to: "consoles#index"
  get "/status", to: "status#index"
  get "/home", to: "home#index"
  get "/widgets", to: "widgets#index"
  get "/posts", to: "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
