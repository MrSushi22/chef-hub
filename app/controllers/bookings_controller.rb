class BookingsController < ApplicationController

  def create
    @booking = Bookings.new
    @booking.save
  end

  def destroy
  end


end
