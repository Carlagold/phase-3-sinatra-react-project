class CreateLivingExpenses < ActiveRecord::Migration[6.1]
  def change 
    create_table :living_expenses do |t|
      t.integer :user_id
      t.integer :clothing
      t.integer :cell_phone
      t.integer :hair_personal_care
      t.integer :child_care
      t.integer :total_living_expenses
      t.timestamps
    end
  end
end
