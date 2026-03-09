Rails.application.routes.draw do
  root "tasks#index"

  get "/sign_up", to: "registrations#new"
  post "/sign_up", to: "registrations#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :tasks

  get "up" => "rails/health#show", as: :rails_health_check
end
