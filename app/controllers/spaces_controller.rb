class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :destroy]

  def index
    authorize @space
    @spaces = Space.all
  end

  def new
    authorize @space
    @space = Space.new
  end

  def create
    authorize @space
    @space = Space.new(space_params)
    if @space.save
      redirect_to spaces_path
    else
      render :new
    end
  end

  def show
    authorize @space
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
    params.require(:space).permit(:name, :location, :price, :description)
  end
end
