class Post < ApplicationRecord
  include Notifier::Resource

  belongs_to :user
  validates_presence_of :description, message: "Description must be present"

  def recipients_ids
    User.pluck(:id) #- [current_user.id]
  end
end
