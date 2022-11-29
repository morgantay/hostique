class HostelsController < ApplicationController
  before_action :set_hostel, only: %i[show edit update destroy]

  def index
    @hostels = Hostel.all
  end

  def show
    @room = Room.new
    @review = Review.new
    @amenity_tag = AmenityTag.new
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
    raise
    @hostel.destroy
    redirect_to profile_path
  end

  private

  def hostel_params
    params.require(:hostel).permit(:name, :city, :address, :description)
  end

  def set_hostel
    @hostel = Hostel.find(params[:id])
  end
end
