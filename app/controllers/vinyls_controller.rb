class VinylsController < ApplicationController

    skip_before_action :authenticate_user!, only: [:show, :index]
  def show
    @vinyl = Vinyl.find(params[:id])
    @booking = Booking.new
    @user = current_user || User.first
  end

  def index
    if params[:query].present? || params[:genre].present? || params[:condition].present? || params[:order].present?
      sql_query = " \
        vinyls.album_name @@ :query \
        OR vinyls.artist @@ :query \
      "
      @vinyls = Vinyl.all
      @vinyls = @vinyls.where(sql_query, query: "%#{params[:query]}%")  if params[:query].present?
      @vinyls = @vinyls.where(genre: params[:genre]) if params[:genre].present?
      @vinyls = @vinyls.where(condition: params[:condition]) if params[:condition].present?
      if params[:order].present? && params[:order] == 'Highest to lowest'
        @vinyls = @vinyls.order(daily_rate: :desc)  #user choses "Highest to lowest"
      else
        @vinyls = @vinyls.order(daily_rate: :asc) #user choses "Lowest to highest"
      end

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
    if @vinyl.save!
      redirect_to user_bookings_path(current_user, anchor: "owned")
      flash[:notice] = "Vinyl successfully added to your collection"
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
