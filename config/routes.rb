Rails.application.routes.draw do
  get 'purposes/index'
  root to: "purposes#index"
  resources :purposes, only: [:index, :new, :create]
end
