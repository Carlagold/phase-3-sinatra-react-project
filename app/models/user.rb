class User < ActiveRecord::Base
  has_many :incomes
  has_many :expenses
  has_many :home_expenses, through: :expenses
  has_many :transport_expenses, through: :expenses
  has_many :living_expenses, through: :expenses
  has_many :budgets
  has_one :monthly_budgets

  # def self.create_new_user(user)
  #   User.create(first_name:)
  end