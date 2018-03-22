class HousesController < ApplicationController

  def show
    @house = House.find(params[:id])
    @booking = Booking.new
  end

  def gadget_params
    params.require(:house).permit(:price)
  end

end
