class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :resource, polymorphic: true

  scope :unread, -> { where(read: nil) }
  scope :read, -> { where.not(read: nil) }
end
