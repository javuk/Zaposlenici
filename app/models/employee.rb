class Employee < ApplicationRecord
    has_one_attached :image

    def image_as_thumbnail
        image.variant(resize_to_limit: [100, 100]).processed
    end
    def image_as_profile_pic
        image.variant(resize_to_limit: [400, 700]).processed
    end
end
