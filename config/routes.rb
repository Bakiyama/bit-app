Rails.application.routes.draw do
  devise_for :users
  get 'purposes/index'
  root to: "purposes#index"
  resources :purposes, only: [:index, :new, :create]
end
