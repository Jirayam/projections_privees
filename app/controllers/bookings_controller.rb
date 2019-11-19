class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.valid?
      @booking.save
      redirect_to viewing_path(@booking.viewing)
    else
      render :new
    end
  end

  private

  def booking_params
    params.permit(:viewing_id)
  end
end
