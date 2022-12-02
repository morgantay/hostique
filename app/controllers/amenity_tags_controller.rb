class AmenityTagsController < ApplicationController
  before_action :set_hostel, only: %i[create]

  def create
    @amenities = Amenity.where(id: params.dig(:amenity_tag, :amenity))
    authorize @hostel
    @amenities.each do |amenity|
      AmenityTag.create!(hostel: @hostel, amenity: amenity)
    end
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
