Rails.application.routes.draw do
  get 'omniauth_callbacks/google_oauth2'
  get 'omniauth_callbacks/facebook'
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
  resources :answers, only: [:index, :show]
  resources :games, only: [:create], param: :slug

  root to: "home#index"
end
