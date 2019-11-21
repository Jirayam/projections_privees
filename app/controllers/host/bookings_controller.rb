class Host::BookingsController < ApplicationController
  def index
    @viewings = Viewing.where(user_id: current_user)
    # penser à ajouter le fait que l'on ne doit voir que les bookings du current user
  end
end
