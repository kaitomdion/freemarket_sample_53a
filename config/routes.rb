Rails.application.routes.draw do
  root "items#index"
  resources :users, only: [:new, :show, :edit]
  resources :items, only: [:index, :show, :new]
    collection do
      get 'confirm'
    end
  resources :cards, only: [:new]

end
