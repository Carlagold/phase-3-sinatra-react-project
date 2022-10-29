class MonthlyBudgetController < ApplicationController
  set :default_content_type, 'application/json'
  
  get "/monthlybudgets" do
    monthlybudget = MonthlyBudget.allocate
  #   monthlybudget.to_json(include:
    

  #   )


  # end
  # get ""
end
end