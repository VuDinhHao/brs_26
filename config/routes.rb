Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root "static_pages#home"
  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  get "static_pages/help"
  get "static_pages/about"

  namespace :admin do
    root "categories#index"
    resources :categories
    resources :books
    resources :requests, only: [:index]
    resources :users, only: [:index, :new, :create]
  end
  resources :books
  resources :users, only: [:index]
end
