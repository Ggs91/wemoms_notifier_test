module Notifier
  module Notifiable
    extend self

    def notify(resource)
      resource.recipients_ids.each do |recipient_id|
        next if notification_already_sent?(resource, recipient_id)
        Notification.create(resource: resource, user_id: recipient_id)
      end
    end

    private

    def notification_already_sent?(resource, recipient_id)
      Notification.exists?(resource: resource, user_id: recipient_id)
    end
  end
end
