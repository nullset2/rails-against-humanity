class User < ApplicationRecord
  devise :registerable, :rememberable, :trackable, :omniauthable, omniauth_providers: [:twitter, :facebook, :google_oauth2]
  validates :nickname, uniqueness: true

  def self.from_omniauth_hash(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |u|
      u.email = auth.info.email
      u.nickname = auth.info.email.split("@").first
      u.avatar = auth.info.image
    end
  end
end
