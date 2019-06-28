Rails.application.routes.draw do
  root "items#index"
  resources :users, only: [:new, :show, :edit]
  resources :items, only: [:index, :show, :new] do
    collection do
      get 'confirm'
    end
  end
  resources :cards, only: [:index, :new, :create]

end
