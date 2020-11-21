Rails.application.routes.draw do
  devise_for :users
  get 'users/new'
  devise_for :models
  resources :contracts
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
