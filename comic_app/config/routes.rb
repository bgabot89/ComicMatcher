Rails.application.routes.draw do
root to: 'users#index'
resources :users

get "/sign_up", to: "users#new", as: "sign_up"

get "/login", to: "sessions#new"

post "/sessions", to: "sessions#create"

post "/logout", to: "sessions#destroy"



end
