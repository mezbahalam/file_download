class AddAdminToAddfiles < ActiveRecord::Migration
  def change
    add_column :addfiles, :admin_id, :integer
    add_index :addfiles, :admin_id
  end
end
