namespace :notifications do
  task :get_notifications_metrics, [:resource_type] => [:environment] do |task, args|
    Rake::Task['notifications:notifications_sent_count'].invoke(args[:resource_type])
    Rails.logger.info "Number of notifications sent for each resource updated"

    Rake::Task['notifications:notifications_opened_count'].invoke(args[:resource_type])
    Rails.logger.info "Number of notifications opened for each resource updated"
  end

  desc "update number of notifications sent for each resource"
  task :notifications_sent_count, [:resource_type] => [:environment] do |task, args|
    args[:resource_type].constantize.all.each do |resource|
      nb_of_notifications_sent = Notifier.notifications_sent_count(resource)
      resource.update_sent_notifications_metrics(nb_of_notifications_sent)
    end
  end

  desc "update number of notifications opened for each resource"
  task :notifications_opened_count, [:resource_type] => [:environment] do |task, args|
    args[:resource_type].constantize.all.each do |resource|
      nb_of_notifications_opened = Notifier.notifications_opened_count(resource)
      resource.update_opened_notifications_metrics(nb_of_notifications_opened)
    end
  end
end
