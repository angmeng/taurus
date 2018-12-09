class PhotoGallery < ApplicationRecord
    has_one_attached :image
end
