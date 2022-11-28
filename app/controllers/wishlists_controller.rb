class WishlistsController < ApplicationController

  def show
    @wishlist = Wishlist.find(params[:wishlist_id])
  end

  def create
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.user = current_user
    if @wishlist.save
      redirect_to profile_path
    else
      render "users/profile", status: :unprocessable_entity
    end
  end

  def update
    @wishlist = Wishlist.find(params[:wishlist_id])
    @wishlist.update(wishlist_params)
    if @wishlist.save
      redirect_to profile_path
    else
      render "users/profile", status: :unprocessable_entity
    end
  end

  def destroy
    @wishlist = Wishlist.find(params[:wishlist_id])
    @wishlist.destroy
    redirect_to profile_path
  end

  private

  def wishlist_params
    params.require(:wishlist).permit(:name)
  end
end
