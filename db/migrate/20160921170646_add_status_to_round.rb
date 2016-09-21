class AddStatusToRound < ActiveRecord::Migration[5.0]
  def change
    add_column :rounds, :status, :integer
  end
end
