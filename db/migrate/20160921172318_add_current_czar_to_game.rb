class AddCurrentCzarToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :current_czar, :integer
  end
end
