Rails.application.routes.draw do
  resources :tests
  resources :widgets
  resources :posts

  root to: "home#index"
  get "/widgets", to: "widgets#index"
  get "/posts", to: "posts#index"
  resources(:consoles)

  namespace :api do 
    get "/status", to: "status#index"
    get "/consoles", to: "consoles#index"
  end
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
