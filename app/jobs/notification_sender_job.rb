class NotificationSenderJob < ApplicationJob
  include Notifier

  queue_as :default

  def perform(resource_id, resource_type)
    notify(resource_id, resource_type)
  end
end
