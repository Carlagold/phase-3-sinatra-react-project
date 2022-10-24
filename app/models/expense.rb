class Expense < ActiveRecord::Base
  belongs_to :users
  has_many :home_expenses
  has_many :transport_expenses
  has_many :living_expenses
  belongs_to :budgets
end