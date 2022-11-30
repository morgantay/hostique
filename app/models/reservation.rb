class Reservation < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates :start_date, :end_date, presence: true
  validate :no_overlapping_dates?

  def no_overlapping_dates?
    reservations = Reservation.where(room: self.room)
    reservations.all? do |reservation|
      unless self.start_date >= reservation.end_date || self.end_date <= reservation.start_date
        errors.add :start_date, message: "overlapping with another reservation"
        errors.add :end_date, message: "overlapping with another reservation"
      end
    end
  end
end
