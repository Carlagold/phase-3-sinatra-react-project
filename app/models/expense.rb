class Expense < ActiveRecord::Base
  belongs_to :user
  has_many :home_expenses
  has_many :transport_expenses
  has_many :living_expenses
  has_one :monthly_budgets
  belongs_to :budget
end
