Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :edit, :destroy, :update, :show, :create] do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
