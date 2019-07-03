Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :users, only: [:new, :show, :edit ,:index] do
    collection do
      get 'registration'
      get 'sms_confirmation'
      get 'sms_confirmation_sms'
      get 'address'
      get 'credit_card'
      get 'done'
      get 'logout'
      get 'account_information'
    end
  end
  resources :items, only: [:index, :show, :new, :create] do
    collection do
      get 'confirm'
      get 'end'
    end
  end
  resources :cards, only: [:index, :new, :create] 
end
