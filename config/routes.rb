Rails.application.routes.draw do
  # GET / => houses#index
  root to: "houses#index"

  # GET /houses     => houses#index
  # GET /houses/:id => houses#show
  resources "houses", only: %i[index show]

  # GET /students     => students#index
  # GET /students/:id => students#show
  resources "students", only: %i[index show]
end
