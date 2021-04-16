Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "user", to: "user#index"
  get "user/search", to: "user#search"
  get "user/:id", to: "user#show"

  post "user/create", to: "user#create"
  delete "user/:id", to: "user#delete"
  put "user/:id", to:"user#update"
end
