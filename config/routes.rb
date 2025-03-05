Rails.application.routes.draw do

  # CRUD API for users
  post "api/users/create" => "api/users#create"
  get "api/users/:id" => "api/users#show"
  match "api/users/:id" => "api/users#update", via: [:patch, :put]
  delete "api/users/:id" => "api/users#destroy"

end
