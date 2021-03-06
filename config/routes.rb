Rails.application.routes.draw do
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

  # Generate all 7 RESTful routes:
  resources :pages

  get ":permalink", to: "pages#permalink", as: "permalink"
end
