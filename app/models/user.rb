class User < ApplicationRecord
  devise :registerable, :rememberable, :trackable, :omniauthable, omniauth_providers: [:twitter, :facebook, :google_oauth2]
  validates :nickname, uniqueness: true
end
