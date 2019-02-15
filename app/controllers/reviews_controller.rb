class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @space = Space.find(params[:space_id])
    @reviews = policy_scope(Review).where(space: @space)
  end

  def new
    @review = Review.new
    @space = Space.find(params[:space_id])
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @space = Space.find(params[:space_id])
    @review.space = @space
    @review.user = current_user
    authorize @review
    if @review.save!
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
