Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :recipes, only: %i[index new show create]
  # Defines the root path route ("/")
  # root "articles#index
  resources :events
end
