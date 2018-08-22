class Place < ApplicationRecord
    has_many :place_tutorial, dependent: :destroy
end
