Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Session Routes
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # User Routes
  get "/me", to: "users#show"
end
