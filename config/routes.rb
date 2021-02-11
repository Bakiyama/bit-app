Rails.application.routes.draw do
  devise_for :users
  get 'purposes/index'
  root to: "purposes#index"
  resources :purposes, only: [:index, :new, :create, :show] do
    resources :blocks, only: [:create]
  end
end
