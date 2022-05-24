class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
  end
end
