class HostelsController < ApplicationController
  before_action :set_hostel, only: %i[show update destroy]

  def index
    @hostels = Hostel.all
  end

  def show
    # show
  end

  def new
    @hostel = Hostel.new
  end

  def create
    @hostel = Hostel.new(hostel_params)
    if @hostel.save
      redirect_to hostel_path(@hostel)
    else
      render :new, status: :unprocessable_entity
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
    redirect_to hostels_path
  end

  private

  def hostel_params
    params.require(:hostel).permit(:name, :city, :address, :description, :rating)
  end

  def set_hostel
    @hostel = Hostel.find(params[:id])
  end
end
