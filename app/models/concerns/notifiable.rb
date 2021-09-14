module Notifiable
  extend ActiveSupport::Concern

  included do
    has_many :notifications, as: :resource
    after_commit :notify_creation
  end

  def update_sent_notifications_metrics(nb_of_notifications_sent)
    self.update(notifications_sent: nb_of_notifications_sent)
  end

  def update_opened_notifications_metrics(nb_of_notifications_opened)
    self.update(notifications_opened: nb_of_notifications_opened)
  end

  private

  def notify_creation
    if self.respond_to? :recipients_ids
      NotificationSenderJob.perform_later(self.id, self.class.name)
    end
  end
end
