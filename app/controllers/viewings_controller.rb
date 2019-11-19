class ViewingsController < ApplicationController
  def index
    @viewings = Viewing.all
  end

  def show
    @viewing = Viewing.find(params[:id])
  end
end
