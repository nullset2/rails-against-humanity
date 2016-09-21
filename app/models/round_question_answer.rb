class RoundQuestionAnswer < ApplicationRecord
  belongs_to :round_question
  belongs_to :user
  serialize :answer_ids
end
