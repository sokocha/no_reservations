class AddQuoteToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :quote, :text
  end
end
