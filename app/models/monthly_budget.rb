class MonthlyBudget < ActiveRecord::Base
  belongs_to :user
  belongs_to :income
  belongs_to :expense
  belongs_to :home_expense
  belongs_to :living_expense
  belongs_to :transport_expense
  belongs_to :budget
end