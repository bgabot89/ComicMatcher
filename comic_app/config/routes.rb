Rails.application.routes.draw do
root to: 'users#index'
resources :users
resources :writings


get "/sign_up", to: "users#new", as: "sign_up"

get "/login", to: "sessions#new"

post "/sessions", to: "sessions#create"

post "/logout", to: "sessions#destroy"

get "/home", to: "home#show"

get "/artists", to: "artists#show"

get "/writers", to: "writers#show"

# get "/gallery/:user_id", to: "gallery#show"

get "/works", to: "publishedworks#show"

# get "/users/:id/gallery", to: "gallery#show"

get "/users/:id/gallery", to: "users#showGal"

get "/users/:id/writings", to: "users#showWrit"




# # commenting out for now - old writNew routes
# get "/users/:id/writings/edit", to: "users#writNew"

# get "/writers/new", to: "writers#new", as: "writings"

# post "/writers/", to: "writers#create"





end
