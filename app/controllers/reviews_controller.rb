class ReviewsController < ApplicationController
  before_action :set_hostel, only: :create

  def create
    @review = Review.new(review_params)
    @review.hostel = @hostel
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to hostel_path(@hostel)
    else
      render "/portfolio", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_hostel
    @hostel = Hostel.find(params[:hostel_id])
  end
end
