Rails.application.routes.draw do
  devise_for :users
  resources :parts, :products
  root 'products#index'
end
