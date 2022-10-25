class TransportExpense < ActiveRecord::Base 
  belongs_to :expense
  belongs_to :user
  before_save :total_transport_expenses

  def total_transport_expenses
    self.total_transport_expenses = gas + tolls_fares + auto_repairs 
  end  
end