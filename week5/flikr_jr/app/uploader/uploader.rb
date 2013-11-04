class Uploader < CarrierWave::Uploader::Base
  storage :file

  include CarrierWave::MiniMagick
    process :resize_to_fill =>[200, 200]

  def store_dir
    'images'
  end
end