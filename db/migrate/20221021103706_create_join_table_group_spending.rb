# frozen_string_literal: true

class CreateJoinTableGroupSpending < ActiveRecord::Migration[7.0]
  def change
    create_join_table :catergories, :spendings do |t|
      t.index %i[catergory_id spending_id]
    end
  end
end
