class User < ApplicationRecord
  devise :registerable, :rememberable, :trackable, :omniauthable, omniauth_providers: [:twitter, :facebook, :google_oauth2]
  validates :nickname, uniqueness: true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
