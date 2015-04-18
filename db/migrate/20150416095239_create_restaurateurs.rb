class CreateRestaurateurs < ActiveRecord::Migration
  def change
    create_table :restaurateurs do |t|
      t.integer :user_id, :null => false
      t.boolean :active, :default => true

      t.timestamps null: false
    end
  end
end
