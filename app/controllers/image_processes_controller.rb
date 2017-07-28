class ImageProcessesController < ApplicationController
  before_action :set_image, only: [:show, :update]

  def create
    unless image_params.kind_of? HashWithIndifferentAccess
      @image = ImageProcess.new(image_params)
      if @image.save
        render :show, status: :created, location: @image
      else
        render json: @image.errors, status: :unprocessable_entity
      end
    end
  end

  def show
  end

  def update
    if @image.update_attributes(image_params)
      if params[:image_process][:crop_x].present?
        @image.picture.recreate_versions!
        @image.save
        render :show, status: :created, location: @image
      end
    end
  end

  private
  def image_params
    params.require(:image_process).permit(:title, :picture, :crop_x, :crop_y, :crop_w, :crop_h, :rotation_angle)
  end

  def set_image
    @image = ImageProcess.find(params[:id])
  end
end
