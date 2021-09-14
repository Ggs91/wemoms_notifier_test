class AddOpenedAtToNotifications < ActiveRecord::Migration[6.1]
  def change
    add_column :notifications, :opened_at, :datetime, default: nil
  end
end
