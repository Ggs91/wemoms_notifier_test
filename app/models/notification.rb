class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :resource, polymorphic: true

  scope :not_opened, -> { where(seen_at: nil) }
  scope :opened, -> { where.not(seen_at: nil) }
end
