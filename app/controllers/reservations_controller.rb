class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[update destroy]
  before_action :set_room, only: :create
  before_action :set_hostel, only: :create

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.room = @room
    @reservation.user = current_user
    authorize @reservation
    if @reservation.save
      redirect_to hostel_path(@hostel)
    else
      redirect_to hostel_path(@hostel), status: :unprocessable_entity
    end
  end

  def update
    authorize @reservation
    @reservation.update(reservation_params)
    if @reservation.save
      redirect_to profile_path
    else
      render '/profile', status: :unprocessable_entity
    end
  end

  def destroy
    authorize @reservation
    @reservation.destroy
    redirect_to profile_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_room
    @room = Room.find(params[:room_id])
  end

  def set_hostel
    @room = Room.find(params[:room_id])
    @hostel = @room.hostel
  end
end
