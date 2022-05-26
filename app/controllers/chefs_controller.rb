class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      # @chefs = Chef.where(cuisine: params[:query])
      sql_query = "cuisine ILIKE :query OR location ILIKE :query OR nickname ILIKE :query"
      @chefs = Chef.where(sql_query, query: "%#{params[:query]}%")

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
