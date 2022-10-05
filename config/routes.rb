Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/cookies', to: "app_cookies#show"
  get '/cookies/create/:data', to: "app_cookies#create"
  get '/cookies/create_other/:data', to: "app_cookies#create_other"
  get '/cookies/delete', to: "app_cookies#destroy"

  get '/sessions', to: "app_sessions#show"
  get '/sessions/create/:uid', to: "app_sessions#create"

  post '/people/login', to: "people#login"
  get '/people/show', to: "people#show"
  delete '/people/logout', to: "people#logout"
end
