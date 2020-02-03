Rails.application.routes.draw do
  get 'students/index'
  get 'students/show'
  # GET / => houses#index
  root to: "houses#index"

  resources "houses", only: %i[index show]
  # GET /houses     => houses#index
  # GET /houses/:id => houses#show
end
