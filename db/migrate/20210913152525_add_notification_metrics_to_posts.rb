class AddNotificationMetricsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :notifications_sent, :integer, default: 0, null: false
    add_column :posts, :notifications_opened, :integer, default: 0, null: false
  end
end
