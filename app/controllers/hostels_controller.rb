class HostelsController < ApplicationController
  before_action :authorize, only: %i[edit update destroy]
  before_action :set_hostel, only: %i[show edit update destroy]

  def index
    @hostels = Hostel.all
  end

  def show
    @room = Room.new
    @review = Review.new
    @amenity_tag = AmenityTag.new
    @reservation = Reservation.new
    authorize @hostel
  end

  def create
    @hostel = Hostel.new(hostel_params)
    @hostel.user = current_user
    if @hostel.save
      redirect_to profile_path
    else
      redirect_to profile_path, status: :unprocessable_entity
    end
  end

  def update
    @hostel.update(hostel_params)
    if @hostel.save
      redirect_to hostel_path(@hostel)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @hostel.destroy
    redirect_to profile_path
  end

  private

  def authorize
    authorize @hostel
  end

  def hostel_params
    params.require(:hostel).permit(:name, :city, :address, :description)
  end

  def set_hostel
    @hostel = Hostel.find(params[:id])
  end
end
