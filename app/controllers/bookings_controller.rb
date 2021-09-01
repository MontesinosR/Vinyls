class BookingsController < ApplicationController


  def index
  # bought
    # pending
    @bookings_bought_pending = Booking.where(user_id: current_user, status: "Pending")
    # upcoming
    @bookings_bought_upcoming = Booking.where(user_id: current_user, status: "Upcoming")
    # past
    @bookings_bought_completed = Booking.where(user_id: current_user, status: "Completed")
    # cancelled
    @bookings_bought_cancelled = Booking.where(user_id: current_user, status: "Cancelled")

  # sold
    # pending
    @bookings_sold_pending = current_user.owner_bookings.where(status: "Pending")
    # upcoming
    @bookings_sold_upcoming = current_user.owner_bookings.where(status: "Upcoming")
    # past
    @bookings_sold_completed = current_user.owner_bookings.where(status: "Completed")
    # cancelled
    @bookings_sold_cancelled = current_user.owner_bookings.where(status: "Cancelled")

    # owned
    #owned
  @vinyls_owned = Vinyl.where(user_id: current_user)
  end

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
