class Post < ApplicationRecord
  belongs_to :user
  validates_presence_of :description, message: "Description must be present"
end
