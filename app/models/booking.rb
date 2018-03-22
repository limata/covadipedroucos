class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :house
  validates :start_date, :end_date, presence: true

  validate :validate_end_date_before_start_date

  def validate_end_date_before_start_date
    if end_date && start_date
      errors.add(:end_date, "End Date must be after Start Date :)") if end_date < start_date
    end
  end
end
