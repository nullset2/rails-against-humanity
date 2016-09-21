Rails.application.routes.draw do
  resources :round_question_answers
  resources :player_cards
  get 'omniauth_callbacks/google_oauth2'
  get 'omniauth_callbacks/facebook'
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  devise_scope :user do
    delete 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  end
  
  resources :questions, only: [:index, :show]
  resources :answers, only: [:index, :show]
  resources :games, only: [:new, :create], param: :slug

  root to: "home#index"
end
