class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get '/' do
    { message: 'I hope this works...!' }.to_json
  end

  # get all users
  get '/users' do
    u_user = User.all
    u_user.to_json
  end

  # get a specific user
  get '/users/:id' do
    u_user = User.find(params[:id])
    u_user.to_json
  end

  # Create new user
  post '/users' do
    new_user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      username: params[:username],
      password: params[:password]
    )
    new_user.to_json
  end
# Post to login
  post '/login' do
  user = User.find_by(username: params[:username]);
    if user && user.password == params[:password]
    user.to_json
    else
    {error:['Not authorized'].to_json}
    end
  end
 

  # Edit user
  patch '/users/:id' do
    u_user = User.find(params[:id])
    u_user.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      username: params[:username],
      password: params[:password]
    )
    u_user.to_json
  end

  #  Delete user
  delete '/users/:id' do
    u_user = User.find(params[:id])
    u_user.to_json
    u_user.destroy
  end

  # get all income
  get '/incomes' do
    u_income = Income.all
    u_income.to_json
  end

  # get a specific Income
  get '/incomes/:id' do
    u_income = Income.find(params[:id])
    u_income.to_json
  end

  # Create new Income
  post '/incomes' do
    new_income = Income.create(
      user_id: params[:user_id],
      income_input1: params[:income_input1],
      income_input2: params[:income_input2],
      total_income: params[:total_income]
    )
    new_income.to_json
  end

  # Edit income
  patch '/incomes/:id' do
    u_income = Income.find(params[:id])
    u_income.update(
      # Not sure if the following line user should be modify
      user_id: params[:user_id],
      income_input1: params[:income_input1],
      income_input2: params[:income_input2],
      total_income: params[:total_income]
    )
    u_user.to_json
  end

  #  Delete Income
  delete '/incomes/:id' do
    u_income = Income.find(params[:id])
    u_income.to_json
    u_income.destroy
  end
end
