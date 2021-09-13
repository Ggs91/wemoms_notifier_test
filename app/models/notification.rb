class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :resource, polymorphic: true

  scope :unseen, -> { where(seen_at: nil) }
  scope :seen, -> { where.not(seen_at: nil) }
end
