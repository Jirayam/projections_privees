class ViewingsController < ApplicationController
  def index
    @viewings = Viewing.all
    @users = User.geocoded
    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
  end

  def show
    @viewing = Viewing.find(params[:id])
    @bookings = Booking.where(viewing_id: params[:id])
  end
end
