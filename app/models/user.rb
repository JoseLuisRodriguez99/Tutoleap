class User < ApplicationRecord
    has_many :user_estudiante, class_name: :Qualification, foreign_key: "user_estudiante_id"
    has_many :user_docente, class_name: :Qualification, foreign_key: "user_docente_id"
    has_many :user_estudiante, class_name: :Tutorial, foreign_key: "user_estudiante_id"
    has_many :user_docente, class_name: :Tutorial, foreign_key: "user_docente_id"
    has_many :user_document, dependent: :destroy
    has_secure_password
    validates_presence_of :nombre, :email, :password_digest

end
