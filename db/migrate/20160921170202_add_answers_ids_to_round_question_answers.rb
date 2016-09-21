class AddAnswersIdsToRoundQuestionAnswers < ActiveRecord::Migration[5.0]
  def change
    add_column :round_question_answers, :answer_ids, :integer, array:true, default: []
  end
end
