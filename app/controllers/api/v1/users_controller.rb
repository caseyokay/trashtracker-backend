class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def show
    user = User.find(params[:id])
    render json: user 
  end

  def index
    users = User.all 
    render json: users 
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  # user = User.create!(user_params)
  # render json: user

  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token({user_id: user.id})
      render json: { user: UserSerializer.new(user), jwt: token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  

  def update
      user = User.find(params[:id])
      user.update!(user_params)
      render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private

  def user_params
      params.permit(:name, :email, :password)
      #dont need .require!
  end

end
