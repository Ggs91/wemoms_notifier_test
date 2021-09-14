module Notifier
  module Metrics
    extend self

    def notifications_sent_count(resource)
      resource.notifications.count
    end

    def notifications_opened_count(resource)
      resource.notifications.opened.count
    end
  end
end
