module Notifier
  extend ActiveSupport::Autoload

  autoload :Notifiable, "notifier/resource"
  autoload :Notifiable, "notifier/notifiable"
  autoload :Notifier, "notifier/metrics"
end
