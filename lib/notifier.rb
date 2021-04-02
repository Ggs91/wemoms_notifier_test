module Notifier
  def notify(post)
    puts "Send notification"
  end

  def notifications_sent_count(post)
    return 100
  end

  def notifications_opened_count(post)
    return 10
  end
end