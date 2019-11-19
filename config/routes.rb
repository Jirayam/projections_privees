Rails.application.routes.draw do
  devise_for :users
  root to: 'viewings#index'
  resources :viewings, only: [:show] do
    resources :bookings, only: [:create]
  end
  namespace :host do
    resources :viewings, only: [:new, :create, :edit, :update, :destroy]
    resources :bookings, only: [:index, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
