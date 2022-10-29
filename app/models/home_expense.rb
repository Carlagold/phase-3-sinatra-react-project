class HomeExpense < ActiveRecord::Base
  belongs_to :expense
  belongs_to :user
  before_save :total_home_expenses
  has_one :monthly_budgets

  def total_home_expenses
    self.total_home_expenses = mortgage_rent + electric + water_sewer_trash + internet_cable + home_supplies + home_repairs
  end
end
