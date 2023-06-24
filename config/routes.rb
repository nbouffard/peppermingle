Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  # root to: "pages#home"
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :events
  # resources :recipes, only: %i[index new show create edit update]
  # # Defines the root path route ("/")
  # # root "articles#index"
  # resources :users, only: %i[show edit update]
end
