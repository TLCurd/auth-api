class UsersController < ApplicationController
  def create
    user = User.new(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    if user.save
      render json: { message: "User created successfully." }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def index
    if current_user
      users = User.all 
      render json: users
    else
      render json: {message: "YOU ARE NOT AUTHORIZED TO VIEW THIS INFORMATION!!!"}, status: :forbidden
    end    
  end
end
