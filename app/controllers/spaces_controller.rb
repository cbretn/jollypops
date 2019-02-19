class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_space, only: [:show, :edit, :update, :destroy]

  def index
    if params[:city]
      @spaces = policy_scope(Space).order(created_at: :desc).where("location ILIKE ?", "%#{params[:city]}%")
    else
      @spaces = policy_scope(Space).order(created_at: :desc)
    end
    # authorize @space
    # @spaces = Space.all
    @markers = @spaces.map do |space|
      { lng: space.longitude, lat: space.latitude }
    end
  end

  def new
    @space = Space.new
    authorize @space
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    authorize @space
    if @space.save
      redirect_to spaces_path
    else
      render :new
    end
  end

  def show
    authorize @space
    @reviews = Review.where(space_id: @space)
    @spacetags = SpaceTag.where(space_id: @space)
    @markers = [@space].map do |space|
      {
        lng: space.longitude,
        lat: space.latitude
      }
    end
  end

  def edit
    authorize @space
  end

  def update
    authorize @space
    if @space.update(space_params)
      redirect_to space_path(@space)
    else
      render :edit
    end
  end

  def destroy
    authorize @space
    @space.destroy
    redirect_to spaces_path
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :location, :price, :description, :photo)
  end
end
