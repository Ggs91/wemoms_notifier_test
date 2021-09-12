module Api
  module V1
    class UserSerializer < Api::V1::BaseSerializer
      attributes :id, :last_name, :first_name
    end
  end
end
