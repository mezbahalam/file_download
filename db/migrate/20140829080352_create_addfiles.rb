class CreateAddfiles < ActiveRecord::Migration
  def change
    create_table :addfiles do |t|
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
