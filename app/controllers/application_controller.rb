class ApplicationController < ActionController::API
  include Pagination
  include Error::ExceptionsHandler

  before_action :require_current_user
  serialization_scope :current_user

  def require_current_user
    return if current_user
    render json: { error: 'you must be logged in' }, status: :unauthorized
  end
end
