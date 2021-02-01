Rails.application.routes.draw do
  get 'purposes/index'
  root to: "purposes#index"
end
