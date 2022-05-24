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
end
