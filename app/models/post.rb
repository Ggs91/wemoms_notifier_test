class Post < ApplicationRecord
  include Notifiable
  belongs_to :user
  validates_presence_of :description, message: "Description must be present"

  private

  def recipients_ids
    User.pluck(:id)
  end
end
