class AddSeenAtToNotifications < ActiveRecord::Migration[6.1]
  def change
    add_column :notifications, :seen_at, :datetime, default: nil
  end
end
