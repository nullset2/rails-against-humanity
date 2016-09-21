class CreatePlayerCards < ActiveRecord::Migration[5.0]
  def change
    create_table :player_cards do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
