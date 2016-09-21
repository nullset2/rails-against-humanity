Rails.application.routes.draw do
  devise_for :users
  resources :answers, only: [:index, :show]
  resources :games, only: [:create], param: :slug

  root to: "home#index"
end
