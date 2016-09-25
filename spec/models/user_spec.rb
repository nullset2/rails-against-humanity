require 'rails_helper'

RSpec.describe User, :type => :model do

  context '~ Relationships' do
    it { is_expected.to have_many(:game_entries) }
    it { is_expected.to have_many(:games).through(:game_entries) }

    it { is_expected.to have_many(:player_cards) }
    it { is_expected.to have_many(:answers).through(:player_cards) }

    it { is_expected.to have_many(:round_question_answers) }
  end
end
