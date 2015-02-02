class AddApiBelongsToUser < ActiveRecord::Migration
  def change
    add_column :apis, :user_id, :integer , references: :users
  end
end
