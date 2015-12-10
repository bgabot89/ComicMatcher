Rails.application.routes.draw do
root to: 'users#index'
resources :users

get "/sign_up", to: "users#new", as: "sign_up"



end
