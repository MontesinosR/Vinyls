class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home

  end

  def dashboard
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

end
