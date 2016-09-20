Rails.application.routes.draw do
  resources :answers, only: [:index, :show]
  resources :games, only: [:create], param: :slug

  root to: "home#index"
end
