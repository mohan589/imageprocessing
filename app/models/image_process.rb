class ImageProcess < ApplicationRecord
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h, :rotation_angle

  # mount_uploader :picture, PictureUploader
  mount_base64_uploader :picture, PictureUploader, file_name: -> (i) { i.title }

  validates :title, :presence => true
  validates :picture, :presence => true
end
