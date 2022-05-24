class ChefsController < ApplicationController

  def new
    @user = User.new
    @user.save
  end
end
