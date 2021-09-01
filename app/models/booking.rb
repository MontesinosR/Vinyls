class Booking < ApplicationRecord
  belongs_to :vinyl
  belongs_to :user

  STATUSES = ["Pending", "Cancelled", "Completed", "Upcoming"]

  validates :status, presence: true,  inclusion: { in: STATUSES }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_cannot_be_before

  def end_date_cannot_be_before
    if end_date < start_date
      errors.add(:end_date, "Can't be earlier than start date")
    end
  end

end
