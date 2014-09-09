class AddUserToAddfiles < ActiveRecord::Migration
  def change
    add_column :addfiles, :user_id, :integer
    add_index :addfiles, :user_id
  end
end
