class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @hostels = Hostel.where(city: params[:query])
    else
      @hostels = Hostel.all.sample(4)
    end
    @hostel = Hostel.new
  end

  def profile
    @hostels = Hostel.where(user: current_user)
    @hostel = Hostel.new
    @review = Review.new
  end
end
