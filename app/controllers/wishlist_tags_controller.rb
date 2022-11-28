class WishlistTagsController < ApplicationController
  before_action :set_wishlist, only: :create
  befor_action :set_hostel, only: :create

  def create
    @wishlist_tag = WishlistTag.new(wishlist_tag_params)
    @wishlist_tag.hostel = @hostel
    if @wishlist_tag.save
      redirect_to hostel_path(@hostel)
    else
      render "hostels/show", status: :unprocessable_entity
    end
  end

  def destroy
    @wishlist_tag = WishlistTag.find(params[:id])
    @wishlist_tag.destroy
    redirect_to profile_path(current_user)
  end

  private

  def wishlist_tag_params
    params.require(:wishlist_tag).permit(:wishlist_id)
  end

  def set_hostel
    @hostel = Hostel.find(params[:hostel_id])
  end
end
