Rails.application.routes.draw do
  resources :pages
  # GET / => houses#index
  root to: "houses#index"

  # GET /houses     => houses#index
  # GET /houses/:id => houses#show
  resources "houses", only: %i[index show]

  # GET /students     => students#index
  # GET /students/:id => students#show
  resources "students", only: %i[index show]

  # GET /teachers     => teachers#index
  # GET /teachers/:id => teachers#show
  resources "teachers", only: %i[index show]
end
