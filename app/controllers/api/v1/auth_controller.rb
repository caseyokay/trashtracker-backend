class Api::V1::AuthController < ApplicationController
    # skip_before_action :authorized, only: [:create]
    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
      end

    def create
      @user = User.find_by(email: params[:email])
      #User#authenticate comes from BCrypt
    #   byebug
      if @user && @user.authenticate(params[:password])
        # encode token comes from ApplicationController
        token = encode_token({ user_id: @user.id })
        render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
      else
        render json: { message: 'Invalid email or password' }, status: :unauthorized
      end
    end
  
    private
  
    def user_login_params
      params.permit(:email, :password)
    end
  end
