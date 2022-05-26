class ChefsController < ApplicationController
  def index
    if params[:query].present?
      @chefs = Chef.where(cuisine: params[:query])
    else
      @chefs = Chef.all
   end
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
