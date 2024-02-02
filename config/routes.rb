Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes, only: [:destroy, :new, :create, :show, :update, :edit] do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
