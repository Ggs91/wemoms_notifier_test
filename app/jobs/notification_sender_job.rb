class NotificationSenderJob < ApplicationJob

  queue_as :default

  def perform(resource_id, resource_type)
    resource = find_resource(resource_id, resource_type)
    Notifier.notify(resource)
  end

  private

  def find_resource(resource_id, resource_type)
    resource_class = resource_type.constantize
    resource_class.find(resource_id)
  end
end
