class AddReadToNotifications < ActiveRecord::Migration[6.1]
  def change
    add_column :notifications, :read, :datetime
  end
end
