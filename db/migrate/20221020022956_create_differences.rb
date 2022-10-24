class CreateDifferences < ActiveRecord::Migration[6.1]
  def change
    create_table :budgets do |t|
      t.integer :user_id
      t.integer :total_income
      t.integer :balances
      t.integer :expenses_id
      t.timestamps
    end
  end
end
