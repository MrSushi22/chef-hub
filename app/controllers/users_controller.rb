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
