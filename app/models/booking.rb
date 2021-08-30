class Booking < ApplicationRecord
  belongs_to :vinyl
  belongs_to :user

  STATUSES = ["Pending", "Cancelled", "Completed", "Upcoming"]

  validates :status, presence: true,  inclusion: { in: STATUSES }
  validates :start_date, presence: true
  validates :end_date, presence: true

end
