Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :recipes, only: %i[new show create edit update]
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: %i[show update]
end
