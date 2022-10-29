class Income < ActiveRecord::Base 
  belongs_to :user
  belongs_to :budget
  has_one :monthly_budgets
end
