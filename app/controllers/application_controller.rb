class ApplicationController < ActionController::Base
  include UserAuthentication

  before_action :authenticate_user

  private

  def authenticate_user
    redirect_to new_user_url and return unless authenticate
  end
end
