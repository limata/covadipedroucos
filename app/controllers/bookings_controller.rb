class BookingsController < ApplicationController

  def create
    @House = House.first
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.house = @House
    if @booking.save
     redirect_to bookings_path
   else
      render "contact"
    end
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def index
    @bookings = Booking.all
  end


end
