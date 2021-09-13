class NotificationSenderJob < ApplicationJob
  queue_as :default

  def perform(resource_id, resource_type)
    resource_class = resource_type.constantize
    resource = resource_class.find(resource_id)

    resource.recipients_ids.each do |recipient_id|
      Notification.create(resource: resource, user_id: recipient_id)
    end
  end
end
