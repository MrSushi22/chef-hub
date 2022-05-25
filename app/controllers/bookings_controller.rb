class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end
  def new
    @booking = Booking.new
    @chef = Chef.find(params[:chef_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.chef = Chef.find(params[:chef_id])
    if @booking.save
      redirect_to chef_bookings_path
    else
      render :new
    end
  end

  def destroy
  end

  def show
    @chef = Chef.find(params[:chef_id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
