class User < ApplicationRecord
  devise :registerable, :rememberable, :trackable, :omniauthable, omniauth_providers: [:twitter, :facebook, :google_oauth2]
  validates :nickname, uniqueness: true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def self.from_omniauth_hash(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |u|
      u.email = auth.info.email
      u.nickname = auth.info.email.split("@").first
      u.avatar = auth.info.image
    end
  end
end
