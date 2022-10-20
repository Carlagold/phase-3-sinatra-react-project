class CreateIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :incomes do |t|
      t.integer :income_input1
      t.integer :income_input2
      t.integer :total_income
      t.integer :user_id
      t.timestamps
    end
  end
end
