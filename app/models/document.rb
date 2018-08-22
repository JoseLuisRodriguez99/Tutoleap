class Document < ApplicationRecord
  belongs_to :user_document, class_name: :User
end
