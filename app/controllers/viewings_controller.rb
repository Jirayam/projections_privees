class ViewingsController < ApplicationController
  def index
    @users = User.geocoded
    @users_viewings = @users.select { |user| user.viewings != [] } # we can add=> && user.viewings.first.date >= Date.today
    @markers = @users_viewings.map do |user_v|
      {
        lat: user_v.latitude,
        lng: user_v.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user_v: user_v})
      }
    end

    if params[:query].present?
      @viewings = Viewing.where("movie_info ILIKE ?", "%#{params[:query]}%")
    else
      @viewings = Viewing.all
    end

  end

  def show
    @viewing = Viewing.find(params[:id])
    @bookings = Booking.where(viewing_id: params[:id])
    @places_nb = @viewing.capacity - @bookings.count
  end
end
