class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
  end

  def show
  end
end
