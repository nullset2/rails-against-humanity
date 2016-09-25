require 'rails_helper'

RSpec.describe Answer, :type => :model do

  it { is_expected.to have_many(:round_question_answers) }

end
