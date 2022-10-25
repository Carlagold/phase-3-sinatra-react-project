class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "I hope this works...!" }.to_json
  end
  # create a new user
  get "/user" do
    a_user = User.all
    a_user.to_json
  end
  # get a specific user
  get "/user/:user_id" do
    u_user = User.find(params[:user_id])
    u_user.to_json
  end

  # Create new user
  post "/user/:id" do
    new_user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      username: params[:username],
      password: params[:password]
    )
    new_user.to_json
  end
end
