class Game < ApplicationRecord
  after_initialize :create_slug

  has_many :game_entries
  has_many :player_cards
  has_many :rounds
  belongs_to :current_czar, class_name: "User"

  def create_slug
    self.slug = (FFaker::HipsterIpsum.word + " " + FFaker::Name.first_name).parameterize
  end
end
