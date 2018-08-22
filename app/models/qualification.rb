class Qualification < ApplicationRecord
    belongs_to :user_estudiante, class_name: :User
    belongs_to :user_docente, class_name: :User 
end
