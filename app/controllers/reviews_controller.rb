class ReviewsController < ApplicationController
  def index
    @space = Space.find(params[:space_id])
    @reviews = policy_scope(Review).order(created_at: :desc)
    @reviews = Review.where(space_id: @space)
  end

  def new
    @review = Review.new
    @space = Space.find(params[:space_id])
  end

  def create
    @review = Dose.new(dose_params)
    @review.space = Space.find(params[:space_id])
    @review.user = current_user
    if @review.save!
      redirect_to space_path(@space)
    else
      render :new
    end
  end
end
