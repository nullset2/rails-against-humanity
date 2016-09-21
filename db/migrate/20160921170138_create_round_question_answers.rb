class CreateRoundQuestionAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :round_question_answers do |t|
      t.integer :round_question_id
      t.integer :user_id

      t.timestamps
    end
  end
end
