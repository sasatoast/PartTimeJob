class UsersController < ApplicationController
  def create
    user = UserUseCase.create_user(user_params)
    if user
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :university, :faculty)
  end
end
