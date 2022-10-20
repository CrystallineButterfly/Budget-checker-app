class CreateCatergories < ActiveRecord::Migration[7.0]
  def change
    create_table :catergories do |t|

      t.timestamps
    end
  end
end
