class AmenityTagsController < ApplicationController
  before_action :set_hostel, only: %i[create]

  def create
    @amenity_tag = AmenityTag.new(amenitytag_params)
    @amenity_tag.hostel = @hostel
    authorize @amenity_tag.hostel
    @amenity_tag.save
    redirect_to hostel_path(@hostel)
  end

  def destroy
    @amenity_tag = AmenityTag.find(params[:id])
    authorize @amenity_tag.hostel
    @amenity_tag.destroy
    redirect_to hostel_path(@amenity_tag.hostel)
  end

  private

  def amenitytag_params
    params.require(:amenity_tag).permit(:amenity_id)
  end

  def set_hostel
    @hostel = Hostel.find(params[:hostel_id])
  end
end
