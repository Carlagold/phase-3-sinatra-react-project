class Income < ActiveRecord::Base 
  belongs_to :users
  belongs_to :budgets
end