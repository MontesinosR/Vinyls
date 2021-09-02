class VinylsController < ApplicationController

    skip_before_action :authenticate_user!, only: [:show, :index]
  def show
    @vinyl = Vinyl.find(params[:id])
    @booking = Booking.new
    @user = current_user || User.first
  end

  def index
    if params["query"].present?
      @vinyls = Vinyl.where("album_name @@ ?", params["query"])
    else
      @vinyls = Vinyl.all
    end
    @markers = @vinyls.geocoded.map do |vinyl|
      {
        lat: vinyl.latitude,
        lng: vinyl.longitude
      }
    end
  end

  def new
    @vinyl = Vinyl.new
  end

  def create
    @vinyl = Vinyl.new(vinyl_params)
    @vinyl.user = current_user
    if @vinyl.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @vinyl = Vinyl.find(params[:id])
  end

  def update
    @vinyl = Vinyl.find(params[:id])
    @vinyl.update(vinyl_params)
    if @vinyl.save
      render root_path
    else
      render :edit
    end
  end

  def destroy
    @vinyl = Vinyl.find(params[:id])
    @vinyl.destroy
    redirect_to root_path
  end

  def vinyl_params
    params.require(:vinyl).permit(:album_name, :artist, :description, :condition, :genre, :daily_rate, :photo)
  end
end
