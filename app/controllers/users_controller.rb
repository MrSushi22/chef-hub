class UsersController < ApplicationController
  def new
    @user = User.new
    @user.save
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to users_create_path
    end
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
