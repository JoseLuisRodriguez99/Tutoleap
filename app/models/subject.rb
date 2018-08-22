class Subject < ApplicationRecord
    has_many :subject_tutorial, dependent: :destroy
end
