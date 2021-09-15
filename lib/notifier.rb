module Notifier
  extend ActiveSupport::Autoload

  autoload :Notifiable, "notifier/notifiable"
  autoload :Resource, "notifier/resource"
  autoload :Metrics, "notifier/metrics"
end
