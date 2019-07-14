Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords"
  } 
  devise_scope :user do
    get 'users/registration', to: 'users/registrations#registration'
    get 'users/sms_confirmation', to: 'users/registrations#sms_confirmation'
    get 'users/sms_confirmation_sms', to: 'users/registrations#sms_confirmation_sms'
    get 'users/address', to: 'users/registrations#address'   
  end
  root "items#index"
  resources :users, only: [:new, :show, :edit, :index] do
    collection do
      get 'credit_card'
      get 'done'
      get 'logout'
      get 'account_information'
    end
    member do
      get :itemlist
    end
  end
  resources :items, only: [:index, :show, :new,:destroy,:create,:edit,:update] do
    collection do

      get 'end'
      get 'search'
    end
    member do
      get :editprev
      get 'confirm'
    end
  end
  resources :cards, only: [:index, :new, :create] do
    member do
    get 'pay'
  end
  end
  resources :categories, only: [:show]
  resources :brands, only: [:index]
end