class Tutorial < ApplicationRecord
  belongs_to :user_estudiante, class_name: :User
  belongs_to :user_docente, class_name: :User 
  belongs_to :subject_tutorial, class_name: :subject
  belongs_to :place_tutorial, class_name: :place
  
end
