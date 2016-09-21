class CreateRoundQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :round_questions do |t|
      t.integer :round_id
      t.integer :question_id

      t.timestamps
    end
  end
end
