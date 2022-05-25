class BookingsController < ApplicationController

  def create
    @booking = Bookings.new
    @booking.save
  end

  def new
    @booking = Bookings.new
    @chef =
  end

  def destroy
  end

  def set_booking_status
    #return a boolean
  end
end
