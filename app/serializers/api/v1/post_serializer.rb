module Api
  module V1
    class PostSerializer < Api::V1::BaseSerializer
      attributes :id, :description, :notifications_sent, :notifications_opened
      belongs_to :user
    end
  end
end
