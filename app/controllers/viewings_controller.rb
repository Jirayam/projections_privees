class ViewingsController < ApplicationController
  def index
    @viewings = Viewing.all
  end

  def show
    @viewing = Viewing.find(params[:id])
    @bookings = Booking.where(viewing_id: params[:id])
  end
end
