class AddAuthorIdToSpending < ActiveRecord::Migration[7.0]
  def change
    add_column :spendings, :author_id, :integer, null: false, foreign_key: true, index: true
  end
end
