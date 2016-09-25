require 'rails_helper'

RSpec.describe RoundQuestion, :type => :model do

  context '~ Relationships' do
    it { is_expected.to belong_to(:round) }
    it { is_expected.to belong_to(:question) }
    it { is_expected.to have_many(:round_question_answers) }
  end

end
