class Host::BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user.id)
    # penser à ajouter le fait que l'on ne doit voir que les bookings du current user
  end
end
