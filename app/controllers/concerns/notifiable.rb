module Notifiable
  extend ActiveSupport::Concern
  included do
    has_many :notifications, as: :resource
    after_commit :send_notifications_to_users
  end

  def send_notifications_to_users
    if self.respond_to? :recipients_ids
      NotificationSenderJob.perform_later(self.id, self.class)
    end
  end
end
