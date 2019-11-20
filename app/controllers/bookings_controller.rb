class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:viewing_id])
    @booking.user_id = current_user
    @viewing = @booking.viewing
  end

  def create
    @booking = Booking.new(booking_params)
    @viewing = @booking.viewing
    @booking.user = current_user
    if @booking.valid?
      @booking.save
      redirect_to viewing_booking_path(@booking, @viewing)
    else
      render :new
    end
  end

  private

  def booking_params
    params.permit(:viewing_id)
  end
end
