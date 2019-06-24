Rails.application.routes.draw do
  root "items#index"
  resources :users, only: [:new, :show, :edit] do
    collection do
      get 'registration'
      get 'sms_confirmation'
    end
  end
  resources :items, only: [:index, :show, :new] do
    collection do
      get 'confirm'
    end
  end
  resources :cards, only: [:new]

end
