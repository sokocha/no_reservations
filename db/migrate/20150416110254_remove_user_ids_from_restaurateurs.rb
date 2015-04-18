class RemoveUserIdsFromRestaurateurs < ActiveRecord::Migration
  def change
    remove_column :restaurateurs, :user_id, :integer
  end
end
