class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private
  # # We define this method in ApplicationController because we'll eventually want to call it from other controllers.
  def require_sign_in
    unless current_user
      flash[:alert] = "You must be logged in to do that"

      redirect_to new_session_path
    end
  end
end
