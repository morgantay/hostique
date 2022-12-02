class HostelsController < ApplicationController
  before_action :set_hostel, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @hostels = policy_scope(Hostel).all.joins(:amenity).where("amenity.name ILIKE hostel.amenity_tag.amenity.name")
    else
      @hostels = policy_scope(Hostel).all
    end
    respond_to do |format|
      format.html
      format.text { render partial: "hostels/hostels", locals: {hostels: @hostels}, formats: [:html] }
    end
  end

  def show
    @rooms = @hostel.rooms
    @reservation = Reservation.last
    @room = Room.new
    @review = Review.new
    @amenity_tag = AmenityTag.new
    hostel_coord = @hostel.geocode
    @marker = { lng: hostel_coord[1], lat: hostel_coord[0],
                style: 'mapbox://styles/mtbell1206/clb34hker000214qrxa23282q' }
  end

  def create
    @hostel = Hostel.new(hostel_params)
    @hostel.user = current_user
    authorize @hostel
    if @hostel.save
      redirect_to profile_path, notice: "#{@hostel.name} has been listed!"
    else
      redirect_to profile_path, status: :unprocessable_entity, notice: "Unable to list hostel."
    end
  end

  def edit
    # edit
  end

  def update
    @hostel.update(hostel_params)
    if @hostel.save
      redirect_to hostel_path(@hostel), notice: "#{@hostel.name} has been updated."
    else
      render :new, status: :unprocessable_entity, notice: "Failed to make changes to #{@hostel.name}."
    end
  end

  def destroy
    @hostel.destroy
    redirect_to profile_path
  end

  private

  def hostel_params
    params.require(:hostel).permit(:name, :city, :address, :description, photos: [])
  end

  def set_hostel
    @hostel = Hostel.find(params[:id])
    authorize @hostel
  end
end
