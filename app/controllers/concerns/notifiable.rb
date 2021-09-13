module Notifiable
  extend ActiveSupport::Concern

  included do
    has_many :notifications, as: :resource
    after_commit :notify_creation
  end

  def notify_creation
    p "NOTIF SEND"
    if self.respond_to? :recipients_ids
      NotificationSenderJob.perform_later(self.id, self.class.name)
    end
  end
end
