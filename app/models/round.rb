class Round < ApplicationRecord
  enum status: [:available, :in_progress, :finished]
  belongs_to :game
  has_one :round_question
end
