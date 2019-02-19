class SpaceTagsController < ApplicationController
  def index
    @spacetags = SpaceTag.all
  end

  def new
    @spacetag = SpaceTag.new
    authorize @spacetag
  end

  def create
    @space = Space.find(params[:space_tag][:space_id])
    @tag = Tag.find(params[:space_tag][:tag_id])
    @spacetag = SpaceTag.new(spacetag_params)
    @spacetag.space = @space
    @spacetag.tag = @tag
    authorize @spacetag
    if @spacetag.save!
      redirect_to new_space_tag_path
    else
      render :new
    end
  end

  private

  def spacetag_params
    params.require(:space_tag).permit(:space, :tag)
  end
end
