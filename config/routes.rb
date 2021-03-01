Rails.application.routes.draw do
  devise_for :users
  root to: "purposes#index"
  resources :purposes do
    resources :blocks, only: [:create]
  end
end
