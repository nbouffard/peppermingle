Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :recipes, only: %i[index]
end
