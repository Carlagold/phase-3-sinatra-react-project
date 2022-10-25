class LivingExpense < ActiveRecord::Base
  belongs_to :expense
  belongs_to :user
  before_save :total_living_expenses

  def total_living_expenses
    self.total_living_expenses = clothing + cell_phone + hair_personal_care + child_care
  end
end
