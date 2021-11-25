Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :recipes, only: [:index, :show] do
    resources :saved_recipes, only: [:create]
  end
  resources :saved_recipes, only: [:destroy, :update]
  get 'dashboard', to: 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'search', to: 'pages#search'
end
