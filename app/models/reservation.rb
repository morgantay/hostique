class Reservation < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates :start_date, :end_date, presence: true
  validate :available?

  # def no_overlapping_dates?
  #   reservations = Reservation.where(room: self.room)
  #   reservations.all? do |reservation|
  #     unless self.start_date >= reservation.end_date || self.end_date <= reservation.start_date
  #       errors.add :start_date, message: "overlapping with another reservation"
  #       errors.add :end_date, message: "overlapping with another reservation"
  #     end
  #   end
  # end

  def available?
    reservations = Reservation.where(room: self.room)
    overlapping_reservations = reservations.filter do |reservation|
      self.start_date < reservation.end_date || self.end_date > reservation.start_date
    end
    booked_beds = []
    overlapping_reservations.each do |reservation|
      booked_beds << reservation.amount_of_beds
    end
    if booked_beds.sum >= self.room.number_of_beds
      errors.add :end_date, message: "this room is fully booked!"
    else
      true
    end
  end
end
