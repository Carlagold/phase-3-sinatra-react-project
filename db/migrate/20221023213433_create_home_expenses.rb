class CreateHomeExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :home_expenses do |t|
    t.integer :user_id, null: false, foreign_key: true
    t.integer :mortgage_rent
    t.integer :electric
    t.integer :gas
    t.integer :water_sewer_trash
    t.integer :internet_cable
    t.integer :home_supplies
    t.integer :home_repairs
    t.integer :total_home_expenses
    t.timestamps
    end
  end
end
