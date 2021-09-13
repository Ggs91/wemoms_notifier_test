namespace :notifications do
  task get_notifications_metrics: :environment do
    Rake::Task['notifications:notifications_sent_count'].invoke
    Rails.logger.info "Number of notifications sent for each resource saved in DB"

    Rake::Task['notifications:notifications_read_count'].invoke
    Rails.logger.info "Number of notifications read for each resource saved in DB"
  end

  desc "Get number of notifications sent for each resource and save it in DB"
  task notifications_sent_count: :environment do
    p  notifications_sent_count
  end

  desc "Get number of notifications read for each resource and save it in DB"
  task notifications_read_count: :environment do
  end
end
