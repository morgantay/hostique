class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @hostels = Hostel.all
    @hostel = Hostel.new
  end

  def profile
    @hostels = Hostel.where(user: current_user)
    @hostel = Hostel.new
  end
end
