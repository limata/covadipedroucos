class PagesController < ApplicationController
  def contact
  end

  def about
  end

  def home
    @house = House.first
    @booking = Booking.new
  end
end
