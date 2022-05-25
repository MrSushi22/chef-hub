class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
  end

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new
    @chef.save
  end

  def show
    @chef = Chef.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end



end
