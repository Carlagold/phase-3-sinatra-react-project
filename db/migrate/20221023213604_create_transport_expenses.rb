class CreateTransportExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :transportation_expenses do |t|
      t.integer :user_id
      t.integer :gas
      t.integer :tolls_fares
      t.integer :auto_repairs
      t.integer :total_transport_expenses
    end
  end
end
