Rails.application.routes.draw do
  root 'home#index'
  resources :transactions
  resources :users
end
