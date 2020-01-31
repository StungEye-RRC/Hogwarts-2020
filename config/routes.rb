Rails.application.routes.draw do
  # GET / => houses#index

  root to: "houses#index"

  # GET /houses/:id => houses#show

  get "houses/:id", to: "houses#show", id: /\d+/, as: "house" # house_path
end
