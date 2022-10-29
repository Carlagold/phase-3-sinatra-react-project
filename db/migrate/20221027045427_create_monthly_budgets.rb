class CreateMonthlyBudgets < ActiveRecord::Migration[6.1]
  def change
    create_table :monthly_budgets do |t|
      t.integer :user_id
      t.integer :income_id
      t.integer :expense_id
      t.integer :home_expense_id
      t.integer :living_expense_id
      t.integer :transport_expense_id
      t.integer :budget_id
    end
  end
end
