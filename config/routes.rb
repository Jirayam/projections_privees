Rails.application.routes.draw do
  devise_for :users
  root to: 'viewings#index'
  resources :viewings, only: [:show]
  namespace :host do
    resources :viewings, only: [:new, :create, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
