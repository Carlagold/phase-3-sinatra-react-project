class Budget < ActiveRecord::Base 
has_one :incomes
has_one :expenses

end