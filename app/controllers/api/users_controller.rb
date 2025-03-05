class Api::UsersController < ApplicationController
before_action :set_user, only: [:show, :update, :destroy]


  def create 
  name = params[:name]
  email = params[:email]
  password_digest = params[:password_digest]
  user = User.new(name: name, email: email, password_digest: password_digest)
  if user.save
    render json: user
  else
    render json: {errors: user.errors.full_messages}, status: 422
  end
end

def show
 render json: @user
end


def update
  if @user.update(user_params)
    render json: @user
  else
    render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
  end
end

def destroy
  @user.destroy
  render json: {message: "User deleted"}
end

private


def set_user
@user = User.find_by(id: params[:id])
render json: {error: "User not found"}, status: 404 unless @user
end

def user_params
params.require(:user).permit(:name, :email, :password_digest, :role)
end



end