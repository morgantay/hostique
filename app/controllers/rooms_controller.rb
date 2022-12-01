class RoomsController < ApplicationController
  before_action :set_hostel, except: %i[destroy update]
  before_action :set_room, only: %i[update destroy]

  def create
    @room = Room.new(room_params)
    @room.hostel = @hostel
    authorize @room.hostel
    if @room.save
      redirect_to hostel_path(@hostel), notice: "#{@room.name} has been added."
    else
      render "hostels/show", status: :unprocessable_entity, notice: "Failed to add #{@room.name}"
    end
  end

  def update
    authorize @room.hostel
    @hostel = @room.hostel
    @room.update(room_params)
    if @room.save
      redirect_to hostel_path(@hostel), notice: "#{@room.name} has been updated."
    else
      redirect_to hostel_path(@hostel), status: :unprocessable_entity, notice: "Failed to make changes to #{@room.name}."
    end
  end

  def destroy
    authorize @room.hostel
    @hostel = @room.hostel
    @room.destroy
    redirect_to hostel_path(@hostel), status: :see_other
  end

  private

  def set_hostel
    @hostel = Hostel.find(params[:hostel_id])
  end

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:number_of_beds, :price_per_night, :name, :description, :photo)
  end
end
