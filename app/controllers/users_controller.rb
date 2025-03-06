class UsersController < ApplicationController
  def create
    user=User.new(user_params)
    if user.save
      render json:user,status: :created
    else
      render json:user.error,status: :unprocessible_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password_digest, :university, :faculty)
  end
end
