class UsersController < ApplicationController

  def new
    @user = User.new
    @user.save
  end
end

def update
  @user = User.find(params[:id])
  @user.update_attribute(:photo, params[:user][:photo])
end

private

def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :password, :photo)
end
