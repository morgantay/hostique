class HostelsController < ApplicationController
  before_action :set_hostel, only: %i[show edit update destroy]

  def index
    @hostels = policy_scope(Hostel).all
  end

  def show
    authorize @hostel
    @rooms = @hostel.rooms
    @room = Room.new
    @review = Review.new
    @amenity_tag = AmenityTag.new
  end

  def create
    @hostel = Hostel.new(hostel_params)
    @hostel.user = current_user
    authorize @hostel
    if @hostel.save
      redirect_to profile_path
    else
      redirect_to profile_path, status: :unprocessable_entity
    end
  end

  def update
    authorize @hostel
    @hostel.update(hostel_params)
    if @hostel.save
      redirect_to hostel_path(@hostel)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @hostel
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
