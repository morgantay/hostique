class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @hostels = Hostel.where("city ILIKE ?", "%#{params[:query]}%")
    else
      @hostels = Hostel.all.sample(5)
    end
    @amenities = Amenity.all.map { |am| am.name }
    respond_to do |format|
      format.html
      format.text { render partial: { hostels: @hostels.joins(:amenity).where("amenity ILIKE hostel.amenity_tag.amenity.name") } }
    end
  end

  def profile
    @hostels = Hostel.where(user: current_user)
    @hostel = Hostel.new
    @review = Review.new
  end
end
