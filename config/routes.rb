Rails.application.routes.draw do
  root to: "items#index"
  resources :users
  resources :items
  resources :cards
end
