class Photo < ActiveRecord::Base
    mount_uploader :file, Uploader
end
