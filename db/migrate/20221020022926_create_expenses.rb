class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.integer :user_id
      t.integer :total_expenses, default: 0
      t.timestamps
    end
  end
end
