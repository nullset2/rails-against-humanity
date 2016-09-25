require 'rails_helper'

RSpec.describe GameEntry, :type => :model do

  context '~ Relationships' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:game) }
  end
end
