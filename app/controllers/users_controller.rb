class UsersController < ApplicationController

  def new
    @user = User.new
    @user.save
  end
end

private

def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :password, :avatar)
end
