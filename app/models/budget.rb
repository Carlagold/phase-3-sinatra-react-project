class Budget < ActiveRecord::Base 
belongs_to :incomes
belongs_to :expenses 
belongs_to :users

end