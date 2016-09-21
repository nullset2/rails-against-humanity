class User < ApplicationRecord
  devise :registerable, :rememberable, :trackable, :omniauthable, omniauth_providers: [:twitter, :facebook, :google_oauth2]
  validates :nickname, uniqueness: true
  validates :email, uniqueness: true

  has_many :game_entries
  has_many :games, through: :game_entries

  has_many :player_cards
  has_many :answers, through: :player_cards

  has_many :round_question_answers

  def self.from_omniauth_hash(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |u|
      u.email = auth.info.email
      u.nickname = auth.info.email.split("@").first
      u.avatar = auth.info.image
    end
  end
end
