Rails.application.routes.draw do
  root to: "items#index"
  resources :users
  resources :items
   collection do
    get 'confirm'

  resources :cards
end
