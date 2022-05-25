class BookingsController < ApplicationController


  def new
    @booking = Booking.new
    @chef = Chef.find(params[:chef_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.chef = Chef.find(params[:chef_id])
    if @booking.save
      redirect_to chefs_path
    else
      render :new
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
