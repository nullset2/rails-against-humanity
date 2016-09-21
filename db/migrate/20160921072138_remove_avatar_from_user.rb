class RemoveAvatarFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :users, :avatar
  end
end
