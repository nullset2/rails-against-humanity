require 'rails_helper'

RSpec.describe Game, :type => :model do
  
  context '~ Relationships' do
    it { is_expected.to have_many(:game_entries) }
    it { is_expected.to have_many(:player_cards) }
    it { is_expected.to have_many(:rounds) }
  end

end
