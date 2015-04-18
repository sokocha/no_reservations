class AddUserIdssToRestaurateurs < ActiveRecord::Migration
  def change
    add_column :restaurateurs, :user_id, :integer
    add_index :restaurateurs, :user_id, unique: true
  end
end
