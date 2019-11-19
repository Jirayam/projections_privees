class Host::ViewingsController < ApplicationController
  def new
    @viewing = Viewing.new
  end

  def create
    @viewing = Viewing.new(viewing_params)
    @viewing.user_id = 1
    if @viewing.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @viewing = Viewing.find(params[:id])
  end

  def update
    @viewing = Viewing.find(params[:id])
    if @viewing.update(viewing_params)
      redirect_to viewing_path(@viewing)
    else
      render :edit
    end
  end

  private

  def viewing_params
    params.require(:viewing).permit(:movie_info, :capacity, :date, :price)
  end
end
