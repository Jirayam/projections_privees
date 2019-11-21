class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user)
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
    @booking.progress = 0
    if @booking.valid?
      @booking.save
      redirect_to viewing_booking_path(@booking, @viewing)
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.progress = 1
    @booking.save
    @viewing = @booking.viewing
    redirect_to viewing_path(@viewing)

  end

  def destroy
    @booking = Booking.find(params[:id])
    @viewing = @booking.viewing
    @booking.destroy
    redirect_to viewing_path(@viewing)
  end

  private

  def booking_params
    params.permit(:viewing_id)
  end
end
