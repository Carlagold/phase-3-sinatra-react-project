class CreateIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :incomes do |t|
      t.integer :user_id
      t.integer :income_input1
      t.integer :income_input2
      t.integer :total_income
      t.timestamps
    end
  end
end
