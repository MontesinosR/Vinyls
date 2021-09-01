class BookingsController < ApplicationController

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.status = "Pending"
    if @booking.save
      redirect_to root_path
    else
      redirect_back fallback_location: vinyl_path(Vinyl.find(params[:id]))
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
