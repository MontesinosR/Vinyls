class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.user = @user
    @booking.status = "Pending"
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
