Rails.application.routes.draw do
  devise_for :users
  root to: "purposes#index"
  resources :purposes, only: [:index, :new, :create, :show, :edit, :update] do
    resources :blocks, only: [:create]
  end
end
