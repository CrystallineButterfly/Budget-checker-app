class CreateCatergories < ActiveRecord::Migration[7.0]
  def change
    create_table :catergories do |t|
      t.string :name, null: false
      t.string :icon

      t.references :user, null: false, foreign_key: true, index: true
      t.timestamps
    end
  end
end
