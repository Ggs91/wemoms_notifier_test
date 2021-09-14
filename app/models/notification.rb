class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :resource, polymorphic: true

  scope :not_opened, -> { where(opened_at: nil) }
  scope :opened, -> { where.not(opened_at: nil) }
end
