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
    @vinyl = Vinyl.find(params[:vinyl_id])
    @booking.vinyl = @vinyl
    @booking.status = "Pending"
    if @booking.save
      redirect_to vinyl_path(@vinyl)
      flash[:notice] = "You have successfully requested to rent this vinyl"
    else
      redirect_back fallback_location: vinyl_path(@vinyl)
      # why is it not displaying error when I put end date before start date?
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    if @booking.save
      redirect_back fallback_location: root_path
    else
      redirect_to vinyl_bookings_path
    end
  end


  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :vinyl, :status)
  end
end
